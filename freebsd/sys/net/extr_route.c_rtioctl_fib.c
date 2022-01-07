
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int ;
typedef int caddr_t ;


 int ENXIO ;
 int EOPNOTSUPP ;
 int mrt_ioctl (int ,int ,int ) ;

int
rtioctl_fib(u_long req, caddr_t data, u_int fibnum)
{
 return ENXIO;

}
