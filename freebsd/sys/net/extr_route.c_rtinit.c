
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_family; } ;
struct ifaddr {struct sockaddr* ifa_addr; struct sockaddr* ifa_dstaddr; } ;




 int RTF_HOST ;
 int RT_ALL_FIBS ;
 int RT_DEFAULT_FIB ;
 int rtinit1 (struct ifaddr*,int,int,int) ;

int
rtinit(struct ifaddr *ifa, int cmd, int flags)
{
 struct sockaddr *dst;
 int fib = RT_DEFAULT_FIB;

 if (flags & RTF_HOST) {
  dst = ifa->ifa_dstaddr;
 } else {
  dst = ifa->ifa_addr;
 }

 switch (dst->sa_family) {
 case 128:
 case 129:

  fib = RT_ALL_FIBS;
  break;
 }
 return (rtinit1(ifa, cmd, flags, fib));
}
