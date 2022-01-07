
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_port; int sin6_addr; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_port; TYPE_1__ sin_addr; } ;
struct sockaddr {int sa_family; } ;
struct netbuf {scalar_t__ buf; } ;





 int IN6_IS_ADDR_LOOPBACK (int *) ;
 int INADDR_LOOPBACK ;
 int IPPORT_RESERVED ;
 int IPV6PORT_RESERVED ;
 int htonl (int ) ;
 int ntohs (int ) ;
 int oldstyle_local ;

int
is_loopback(struct netbuf *nbuf)
{
 struct sockaddr *addr = (struct sockaddr *)nbuf->buf;
 struct sockaddr_in *sin;




 switch (addr->sa_family) {
 case 130:
  if (!oldstyle_local)
   return 0;
  sin = (struct sockaddr_in *)addr;
         return ((sin->sin_addr.s_addr == htonl(INADDR_LOOPBACK)) &&
      (ntohs(sin->sin_port) < IPPORT_RESERVED));
 case 128:
  return 1;
 default:
  break;
 }

 return 0;
}
