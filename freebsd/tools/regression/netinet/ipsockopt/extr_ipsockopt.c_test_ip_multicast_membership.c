
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_4__ {void* s_addr; } ;
struct TYPE_3__ {void* s_addr; } ;
struct ip_mreq {TYPE_2__ imr_multiaddr; TYPE_1__ imr_interface; } ;
typedef int sotype ;
typedef int socklen_t ;
typedef int mreq ;
typedef int addrbuf ;


 int AF_INET ;
 void* INADDR_ANY ;
 int IPPROTO_IP ;
 int IP_ADD_MEMBERSHIP ;
 int IP_DROP_MEMBERSHIP ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_TYPE ;
 scalar_t__ dorandom ;
 int err (int,char*,...) ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ getsockopt (int,int ,int ,int*,int*) ;
 void* htonl (int) ;
 int inet_ntop (int ,TYPE_2__*,char*,int) ;
 int nmcastgroups ;
 int random () ;
 scalar_t__ setsockopt (int,int ,int ,struct ip_mreq*,int) ;
 int srandomdev () ;
 int stderr ;
 scalar_t__ verbose ;

__attribute__((used)) static void
test_ip_multicast_membership(int sock, const char *socktypename)
{
    char addrbuf[16];
    struct ip_mreq mreq;
    uint32_t basegroup;
    uint16_t i;
    int sotype;
    socklen_t sotypelen;

    sotypelen = sizeof(sotype);
    if (getsockopt(sock, SOL_SOCKET, SO_TYPE, &sotype, &sotypelen) < 0)
 err(-1, "test_ip_multicast_membership(%s): so_type getsockopt()",
     socktypename);




    if (sotype == SOCK_STREAM)
 return;
    if (dorandom) {

 srandomdev();
 basegroup = 0xEE000000;
 basegroup |= ((random() % ((1 << 11) - 1)) << 16);
    } else {

 basegroup = 0xEE010100;
    }





    for (i = 1; i < nmcastgroups+1; i++) {
 mreq.imr_multiaddr.s_addr = htonl((basegroup + i));
 mreq.imr_interface.s_addr = INADDR_ANY;
 inet_ntop(AF_INET, &mreq.imr_multiaddr, addrbuf, sizeof(addrbuf));
 if (verbose)
  fprintf(stderr, "IP_ADD_MEMBERSHIP %s INADDR_ANY\n", addrbuf);
 if (setsockopt(sock, IPPROTO_IP, IP_ADD_MEMBERSHIP, &mreq,
         sizeof(mreq)) < 0) {
  err(-1,
"test_ip_multicast_membership(%d, %s): failed IP_ADD_MEMBERSHIP (%s, %s)",
      sock, socktypename, addrbuf, "INADDR_ANY");
 }
    }
    for (i = 1; i < nmcastgroups+1; i++) {
 mreq.imr_multiaddr.s_addr = htonl((basegroup + i));
 mreq.imr_interface.s_addr = INADDR_ANY;
 inet_ntop(AF_INET, &mreq.imr_multiaddr, addrbuf, sizeof(addrbuf));
 if (verbose)
  fprintf(stderr, "IP_DROP_MEMBERSHIP %s INADDR_ANY\n", addrbuf);
 if (setsockopt(sock, IPPROTO_IP, IP_DROP_MEMBERSHIP, &mreq,
         sizeof(mreq)) < 0) {
  err(-1,
"test_ip_multicast_membership(%d, %s): failed IP_DROP_MEMBERSHIP (%s, %s)",
      sock, socktypename, addrbuf, "INADDR_ANY");
 }
    }
}
