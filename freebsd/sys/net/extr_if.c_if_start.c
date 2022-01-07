
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int (* if_start ) (struct ifnet*) ;} ;


 int stub1 (struct ifnet*) ;

void
if_start(struct ifnet *ifp)
{

 (*(ifp)->if_start)(ifp);
}
