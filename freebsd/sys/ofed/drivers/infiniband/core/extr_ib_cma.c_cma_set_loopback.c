
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_addr; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr_ib {int sib_addr; } ;
struct sockaddr {int sa_family; } ;




 int INADDR_LOOPBACK ;
 int htonl (int) ;
 int ib_addr_set (int *,int ,int ,int ,int ) ;
 int ipv6_addr_set (int *,int ,int ,int ,int ) ;

__attribute__((used)) static void cma_set_loopback(struct sockaddr *addr)
{
 switch (addr->sa_family) {
 case 129:
  ((struct sockaddr_in *) addr)->sin_addr.s_addr = htonl(INADDR_LOOPBACK);
  break;
 case 128:
  ipv6_addr_set(&((struct sockaddr_in6 *) addr)->sin6_addr,
         0, 0, 0, htonl(1));
  break;
 default:
  ib_addr_set(&((struct sockaddr_ib *) addr)->sib_addr,
       0, 0, 0, htonl(1));
  break;
 }
}
