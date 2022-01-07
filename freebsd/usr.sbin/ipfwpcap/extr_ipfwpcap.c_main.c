
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int sin_family; int sin_port; } ;
struct sockaddr {int dummy; } ;
struct pcap_pkthdr {void* len; void* caplen; int ts; } ;
typedef void* ssize_t ;
typedef int sin ;
typedef int pcap_t ;
typedef int pcap_dumper_t ;
typedef int fd_set ;
typedef int buf ;
typedef int FILE ;


 int AF_INET ;
 int BUFMAX ;
 int DLT_RAW ;
 scalar_t__ EINTR ;
 int FD_ISSET (int,int *) ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int INADDR_ANY ;
 int IPPROTO_DIVERT ;
 int PF_INET ;
 int SOCK_RAW ;
 int atoi (char*) ;
 int atol (char*) ;
 int bind (int,struct sockaddr*,int) ;
 scalar_t__ debug ;
 scalar_t__ errno ;
 int exit (int) ;
 scalar_t__ ferror (int *) ;
 int fflush (int *) ;
 int fprintf (int ,char*,int,...) ;
 int getopt (int,char**,char*) ;
 int gettimeofday (int *,int *) ;
 int htons (int) ;
 scalar_t__ maxbytes ;
 scalar_t__ maxpkts ;
 int okay (int) ;
 char* optarg ;
 int optind ;
 int pcap_dump (int *,struct pcap_pkthdr*,char*) ;
 int * pcap_dump_open (int *,char*) ;
 int * pcap_open_dead (int ,int) ;
 int pcap_perror (int *,char*) ;
 int perror (char*) ;
 int pidfile ;
 char* prog ;
 int quit (int) ;
 void* recvfrom (int,char*,int,int ,struct sockaddr*,int*) ;
 int reflect ;
 int select (int,int *,int *,int *,int *) ;
 int sendto (int,char*,void*,int ,struct sockaddr*,int) ;
 int socket (int ,int ,int ) ;
 int stderr ;
 int strcpy (int ,char*) ;
 scalar_t__ totbytes ;
 scalar_t__ totpkts ;
 int usage () ;

int
main(int ac, char *av[])
{
 int r, sd, portnum, l;
        struct sockaddr_in sin;
 int errflg = 0;

 int nfd;
 fd_set rds;

 ssize_t nr;

 char *dumpf, buf[BUFMAX];

 pcap_t *p;
 pcap_dumper_t *dp;
 struct pcap_pkthdr phd;

 prog = av[0];

 while ((r = getopt(ac, av, "drb:p:P:")) != -1) {
  switch (r) {
  case 'd':
   debug++;
   break;
  case 'r':
   reflect++;
   break;
  case 'b':
   maxbytes = (ssize_t) atol(optarg);
   break;
  case 'p':
   maxpkts = (ssize_t) atoi(optarg);
   break;
  case 'P':
   strcpy(pidfile, optarg);
   break;
  case '?':
  default:
   errflg++;
   break;
  }
 }

 if ((ac - optind) != 2 || errflg)
  usage();

 portnum = atoi(av[optind++]);
 dumpf = av[optind];

if (debug) fprintf(stderr, "bind to %d.\ndump to '%s'.\n", portnum, dumpf);

 if ((r = socket(PF_INET, SOCK_RAW, IPPROTO_DIVERT)) == -1) {
  perror("socket(DIVERT)");
  exit(2);
 }
 sd = r;

 sin.sin_port = htons(portnum);
 sin.sin_family = AF_INET;
 sin.sin_addr.s_addr = INADDR_ANY;

 if (bind(sd, (struct sockaddr *)&sin, sizeof(sin)) == -1) {
  perror("bind(divert)");
  exit(3);
 }

 p = pcap_open_dead(DLT_RAW, BUFMAX);
 dp = pcap_dump_open(p, dumpf);
 if (dp == ((void*)0)) {
  pcap_perror(p, dumpf);
  exit(4);
 }

 okay(portnum);

 nfd = sd + 1;
 for (;;) {
  FD_ZERO(&rds);
  FD_SET(sd, &rds);

  r = select(nfd, &rds, ((void*)0), ((void*)0), ((void*)0));
  if (r == -1) {
   if (errno == EINTR) continue;
   perror("select");
   quit(11);
  }

  if (!FD_ISSET(sd, &rds))

   continue;
  l = sizeof(sin);
  nr = recvfrom(sd, buf, sizeof(buf), 0, (struct sockaddr *)&sin, &l);
if (debug) fprintf(stderr, "recvfrom(%d) = %zd (%d)\n", sd, nr, l);
  if (nr < 0 && errno != EINTR) {
   perror("recvfrom(sd)");
   quit(12);
  }
  if (nr <= 0) continue;

  if (reflect) {




   l = sizeof(sin);
   r = sendto(sd, buf, nr, 0, (struct sockaddr *)&sin, l);
if (debug) fprintf(stderr, "  sendto(%d) = %d\n", sd, r);
   if (r < 0) { perror("sendto(sd)"); quit(13); }
  }





  if (maxpkts) {
   totpkts++;
   if (totpkts > maxpkts) {
    if (reflect == 1) continue;
    quit(0);
   }
  }
  if (maxbytes) {
   totbytes += nr;
   if (totbytes > maxbytes) {
    if (reflect == 1) continue;
    quit(0);
   }
  }





  (void) gettimeofday(&(phd.ts), ((void*)0));
  phd.caplen = phd.len = nr;
  pcap_dump((u_char *)dp, &phd, buf);
  if (ferror((FILE *)dp)) { perror(dumpf); quit(14); }
  (void) fflush((FILE *)dp);
 }

 quit(0);
}
