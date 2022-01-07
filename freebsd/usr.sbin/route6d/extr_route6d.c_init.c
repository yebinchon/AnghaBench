
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct addrinfo {int ai_addrlen; int ai_addr; scalar_t__ ai_next; void* ai_protocol; void* ai_socktype; void* ai_family; int ai_flags; } ;
typedef int port ;
typedef int int255 ;
typedef int int1 ;
typedef int int0 ;
typedef int hints ;
typedef int fd_mask ;
struct TYPE_2__ {int fd; void* events; } ;


 int AI_PASSIVE ;
 int FD_SET (scalar_t__,struct addrinfo*) ;
 int IPPROTO_IPV6 ;
 void* IPPROTO_UDP ;
 int IPV6_HOPLIMIT ;
 int IPV6_MULTICAST_HOPS ;
 int IPV6_MULTICAST_LOOP ;
 int IPV6_PKTINFO ;
 int IPV6_RECVHOPLIMIT ;
 int IPV6_RECVPKTINFO ;
 int IPV6_V6ONLY ;
 int NFDBITS ;
 int NI_MAXSERV ;
 void* PF_INET6 ;
 void* PF_ROUTE ;
 void* POLLIN ;
 int * RIP6_DEST ;
 int RIP6_PORT ;
 void* SOCK_DGRAM ;
 void* SOCK_RAW ;
 int TAILQ_INIT (int *) ;
 scalar_t__ bind (scalar_t__,int ,int ) ;
 int fatal (char*,...) ;
 int fdmasks ;
 int freeaddrinfo (struct addrinfo*) ;
 int gai_strerror (int) ;
 int getaddrinfo (int *,char*,struct addrinfo*,struct addrinfo**) ;
 int howmany (scalar_t__,int ) ;
 int ifc_head ;
 int * index2ifc ;
 void* malloc (int) ;
 scalar_t__ maxfd ;
 int memcpy (int *,int ,int ) ;
 int memset (struct addrinfo*,int ,int) ;
 scalar_t__ nflag ;
 scalar_t__ nindex2ifc ;
 int * recvecp ;
 int ripsin ;
 scalar_t__ ripsock ;
 scalar_t__ rtsock ;
 TYPE_1__* set ;
 scalar_t__ setsockopt (scalar_t__,int ,int ,int const*,int) ;
 int snprintf (char*,int,char*,int) ;
 scalar_t__ socket (void*,void*,void*) ;
 struct addrinfo* sockvecp ;

__attribute__((used)) static void
init(void)
{
 int error;
 const int int0 = 0, int1 = 1, int255 = 255;
 struct addrinfo hints, *res;
 char port[NI_MAXSERV];

 TAILQ_INIT(&ifc_head);
 nindex2ifc = 0;
 index2ifc = ((void*)0);
 snprintf(port, sizeof(port), "%u", RIP6_PORT);

 memset(&hints, 0, sizeof(hints));
 hints.ai_family = PF_INET6;
 hints.ai_socktype = SOCK_DGRAM;
 hints.ai_protocol = IPPROTO_UDP;
 hints.ai_flags = AI_PASSIVE;
 error = getaddrinfo(((void*)0), port, &hints, &res);
 if (error) {
  fatal("%s", gai_strerror(error));

 }
 if (res->ai_next) {
  fatal(":: resolved to multiple address");

 }

 ripsock = socket(res->ai_family, res->ai_socktype, res->ai_protocol);
 if (ripsock < 0) {
  fatal("rip socket");

 }







 if (bind(ripsock, res->ai_addr, res->ai_addrlen) < 0) {
  fatal("rip bind");

 }
 if (setsockopt(ripsock, IPPROTO_IPV6, IPV6_MULTICAST_HOPS,
     &int255, sizeof(int255)) < 0) {
  fatal("rip IPV6_MULTICAST_HOPS");

 }
 if (setsockopt(ripsock, IPPROTO_IPV6, IPV6_MULTICAST_LOOP,
     &int0, sizeof(int0)) < 0) {
  fatal("rip IPV6_MULTICAST_LOOP");

 }
 if (setsockopt(ripsock, IPPROTO_IPV6, IPV6_PKTINFO,
     &int1, sizeof(int1)) < 0) {
  fatal("rip IPV6_PKTINFO");

 }
 if (setsockopt(ripsock, IPPROTO_IPV6, IPV6_HOPLIMIT,
     &int1, sizeof(int1)) < 0) {
  fatal("rip IPV6_HOPLIMIT");

 }

 freeaddrinfo(res);

 memset(&hints, 0, sizeof(hints));
 hints.ai_family = PF_INET6;
 hints.ai_socktype = SOCK_DGRAM;
 hints.ai_protocol = IPPROTO_UDP;
 error = getaddrinfo(RIP6_DEST, port, &hints, &res);
 if (error) {
  fatal("%s", gai_strerror(error));

 }
 if (res->ai_next) {
  fatal("%s resolved to multiple address", RIP6_DEST);

 }
 memcpy(&ripsin, res->ai_addr, res->ai_addrlen);
 freeaddrinfo(res);





 maxfd = ripsock;


 if (nflag == 0) {
  if ((rtsock = socket(PF_ROUTE, SOCK_RAW, 0)) < 0) {
   fatal("route socket");

  }




  if (rtsock > maxfd)
   maxfd = rtsock;

 } else {



  rtsock = -1;

 }


 fdmasks = howmany(maxfd + 1, NFDBITS) * sizeof(fd_mask);
 if ((sockvecp = malloc(fdmasks)) == ((void*)0)) {
  fatal("malloc");

 }
 if ((recvecp = malloc(fdmasks)) == ((void*)0)) {
  fatal("malloc");

 }
 memset(sockvecp, 0, fdmasks);
 FD_SET(ripsock, sockvecp);
 if (rtsock >= 0)
  FD_SET(rtsock, sockvecp);

}
