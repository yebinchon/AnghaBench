
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* s_addr; } ;
struct TYPE_4__ {void* s_addr; } ;
struct ip_mreq {TYPE_1__ imr_interface; TYPE_2__ imr_multiaddr; } ;
typedef int imr ;


 int DISC_IP ;
 int IPPROTO_IP ;
 int IP_ADD_MEMBERSHIP ;
 int MULTICAST_IP ;
 int PF_INET ;
 int bzero (struct ip_mreq*,int) ;
 int close (int) ;
 void* inet_addr (int ) ;
 scalar_t__ setsockopt (int,int ,int ,struct ip_mreq*,int) ;
 int socket (int ,int,int ) ;
 int warn (char*,char const*,...) ;

__attribute__((used)) static int
multicast_open(int *sockp, int type, const char *type_string)
{
 struct ip_mreq imr;
 int sock;

 sock = socket(PF_INET, type, 0);
 if (sock < 0) {
  warn("multicast_test: socket(PF_INET, %s, 0)", type_string);
  return (-1);
 }

 bzero(&imr, sizeof(imr));
 imr.imr_multiaddr.s_addr = inet_addr(MULTICAST_IP);
 imr.imr_interface.s_addr = inet_addr(DISC_IP);

 if (setsockopt(sock, IPPROTO_IP, IP_ADD_MEMBERSHIP, &imr,
     sizeof(imr)) < 0) {
  warn("multicast_test: setsockopt(IPPROTO_IP, "
      "IP_ADD_MEMBERSHIP, {%s, %s})", MULTICAST_IP, DISC_IP);
  close(sock);
  return (-1);
 }

 *sockp = sock;
 return (0);
}
