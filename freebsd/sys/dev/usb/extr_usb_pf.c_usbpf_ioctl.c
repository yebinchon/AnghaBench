
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct ifnet {int dummy; } ;
typedef int caddr_t ;


 int EINVAL ;

__attribute__((used)) static int
usbpf_ioctl(struct ifnet *ifp, u_long cmd, caddr_t data)
{


 return (EINVAL);
}
