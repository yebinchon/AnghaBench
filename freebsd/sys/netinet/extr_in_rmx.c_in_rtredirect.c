
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct sockaddr {int dummy; } ;


 int rtredirect_fib (struct sockaddr*,struct sockaddr*,struct sockaddr*,int,struct sockaddr*,int ) ;

void
in_rtredirect(struct sockaddr *dst,
 struct sockaddr *gateway,
 struct sockaddr *netmask,
 int flags,
 struct sockaddr *src,
 u_int fibnum)
{
 rtredirect_fib(dst, gateway, netmask, flags, src, fibnum);
}
