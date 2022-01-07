
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct sockaddr {int dummy; } ;
struct rtentry {int dummy; } ;


 int rtrequest_fib (int,struct sockaddr*,struct sockaddr*,struct sockaddr*,int,struct rtentry**,int ) ;

int
in6_rtrequest(int req, struct sockaddr *dst, struct sockaddr *gw,
    struct sockaddr *mask, int flags, struct rtentry **ret_nrt, u_int fibnum)
{

 return (rtrequest_fib(req, dst, gw, mask, flags, ret_nrt, fibnum));
}
