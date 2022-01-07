
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct in_addr {int s_addr; } ;


 scalar_t__ IN_EXPERIMENTAL (int ) ;
 scalar_t__ IN_LINKLOCAL (int ) ;
 scalar_t__ IN_LOOPBACK (int ) ;
 scalar_t__ IN_MULTICAST (int ) ;
 scalar_t__ IN_ZERONET (int ) ;
 int ntohl (int ) ;

int
in_canforward(struct in_addr in)
{
 u_long i = ntohl(in.s_addr);

 if (IN_EXPERIMENTAL(i) || IN_MULTICAST(i) || IN_LINKLOCAL(i) ||
     IN_ZERONET(i) || IN_LOOPBACK(i))
  return (0);
 return (1);
}
