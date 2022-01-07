
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_in6 {int dummy; } ;
typedef struct sockaddr_in6 sockaddr_in ;
struct ipv6_mreq {unsigned int ipv6mr_interface; int ipv6mr_multiaddr; } ;
struct ifaddrs {int ifa_flags; int ifa_name; TYPE_1__* ifa_addr; struct ifaddrs* ifa_next; } ;
struct addrinfo {int ai_addr; scalar_t__ ai_family; } ;
struct TYPE_2__ {scalar_t__ sa_family; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int IFF_MULTICAST ;
 int IPPROTO_IPV6 ;
 int IPPROTO_UDP ;
 int IPV6_JOIN_GROUP ;
 int RPCB_MULTICAST_ADDR ;
 int SOCK_DGRAM ;
 scalar_t__ debugging ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int freeaddrinfo (struct addrinfo*) ;
 int freeifaddrs (struct ifaddrs*) ;
 char* gai_strerror (int) ;
 int getaddrinfo (int *,char*,struct addrinfo*,struct addrinfo**) ;
 scalar_t__ getifaddrs (struct ifaddrs**) ;
 unsigned int if_nametoindex (int ) ;
 int inet_pton (scalar_t__,int ,int *) ;
 struct sockaddr_in6* local_in4 ;
 struct sockaddr_in6* local_in6 ;
 scalar_t__ malloc (int) ;
 int memcpy (struct sockaddr_in6*,int ,int) ;
 int memset (struct addrinfo*,int ,int) ;
 int perror (char*) ;
 scalar_t__ setsockopt (int,int ,int ,struct ipv6_mreq*,int) ;
 int socket (scalar_t__,int ,int ) ;
 int stderr ;

void
network_init(void)
{






 int ecode;
 struct addrinfo hints, *res;

 memset(&hints, 0, sizeof hints);
 hints.ai_family = AF_INET;
 if ((ecode = getaddrinfo(((void*)0), "sunrpc", &hints, &res))) {
  if (debugging)
   fprintf(stderr, "can't get local ip4 address: %s\n",
       gai_strerror(ecode));
 } else {
  local_in4 = (struct sockaddr_in *)malloc(sizeof *local_in4);
  if (local_in4 == ((void*)0)) {
   if (debugging)
    fprintf(stderr, "can't alloc local ip4 addr\n");
   exit(1);
  }
  memcpy(local_in4, res->ai_addr, sizeof *local_in4);
  freeaddrinfo(res);
 }
}
