
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct ifnet {int dummy; } ;
typedef int caddr_t ;


 int sppp_ioctl (struct ifnet*,int ,int ) ;

__attribute__((used)) static int
ng_sppp_ioctl (struct ifnet *ifp, u_long command, caddr_t data)
{
 int error = 0;

 error = sppp_ioctl (ifp, command, data);
 if (error)
  return error;

 return error;
}
