
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_11__ {scalar_t__ s_addr; } ;
struct TYPE_8__ {TYPE_6__ sin_addr; } ;
struct TYPE_10__ {scalar_t__ sa_family; int sa_len; } ;
struct TYPE_9__ {TYPE_1__ sin; TYPE_3__ sa; } ;
typedef TYPE_2__ sockunion_t ;
typedef int socklen_t ;


 scalar_t__ AF_INET ;
 int EX_IOERR ;
 int EX_OSERR ;
 int NI_MAXHOST ;
 int NI_NUMERICHOST ;
 int RXBUFSIZE ;


 int SIG_DFL ;
 int alarm (scalar_t__) ;
 int assert (int) ;
 scalar_t__ dodebug ;
 scalar_t__ doverbose ;
 int fprintf (int ,char*,...) ;
 char* gai_strerror (int) ;
 int getnameinfo (TYPE_3__*,int ,char*,int,int *,int ,int ) ;
 char* inet_ntoa (TYPE_6__) ;
 int jmpbuf ;
 int recvfrom (int,char*,int,int ,TYPE_3__*,int *) ;
 int setjmp (int ) ;
 int signal (int,int ) ;
 int signal_handler ;
 int stderr ;
 int stdout ;
 scalar_t__ timeout ;
 int warnx (char*) ;

__attribute__((used)) static int
recv_loop_with_match(int sock, sockunion_t *group, sockunion_t *source)
{
 int error;
 sockunion_t from;
 char groupname[NI_MAXHOST];
 ssize_t len;
 size_t npackets;
 int jmpretval;
 char rxbuf[RXBUFSIZE];
 char sourcename[NI_MAXHOST];

 assert(source->sa.sa_family == AF_INET);




 if (timeout == 0)
  return (0);

 error = getnameinfo(&group->sa, group->sa.sa_len, groupname,
     NI_MAXHOST, ((void*)0), 0, NI_NUMERICHOST);
 if (error) {
  fprintf(stderr, "getnameinfo: %s\n", gai_strerror(error));
  return (error);
 }

 error = getnameinfo(&source->sa, source->sa.sa_len, sourcename,
     NI_MAXHOST, ((void*)0), 0, NI_NUMERICHOST);
 if (error) {
  fprintf(stderr, "getnameinfo: %s\n", gai_strerror(error));
  return (error);
 }

 fprintf(stdout,
     "Waiting %d seconds for inbound traffic on group %s\n"
     "Expecting no traffic from blocked source: %s\n",
     (int)timeout, groupname, sourcename);

 signal(128, signal_handler);
 signal(129, signal_handler);

 error = 0;
 npackets = 0;
 alarm(timeout);
 while (0 == (jmpretval = setjmp(jmpbuf))) {
  len = recvfrom(sock, rxbuf, RXBUFSIZE, 0, &from.sa,
      (socklen_t *)&from.sa.sa_len);
  if (dodebug) {
   fprintf(stderr, "debug: packet received from %s\n",
       inet_ntoa(from.sin.sin_addr));
  }
  if (source &&
      source->sin.sin_addr.s_addr == from.sin.sin_addr.s_addr)
   break;
  npackets++;
 }

 if (doverbose) {
  fprintf(stderr, "Number of datagrams received from "
      "non-blocked sources: %d\n", (int)npackets);
 }

 switch (jmpretval) {
 case 129:
  break;
 case 128:
  fprintf(stderr, "interrupted\n");
  error = 20;
  break;
 case 0:
  fprintf(stderr, "FAIL: got packet from blocked source\n");
  error = EX_IOERR;
  break;
 default:
  warnx("recvfrom");
  error = EX_OSERR;
  break;
 }

 signal(128, SIG_DFL);
 signal(129, SIG_DFL);

 return (error);
}
