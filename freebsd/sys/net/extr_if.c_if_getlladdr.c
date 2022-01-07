
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;
typedef scalar_t__ if_t ;
typedef int caddr_t ;


 int IF_LLADDR (struct ifnet*) ;

caddr_t
if_getlladdr(if_t ifp)
{
 return (IF_LLADDR((struct ifnet *)ifp));
}
