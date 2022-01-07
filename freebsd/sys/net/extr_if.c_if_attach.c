
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;


 int if_attach_internal (struct ifnet*,int ,int *) ;

void
if_attach(struct ifnet *ifp)
{

 if_attach_internal(ifp, 0, ((void*)0));
}
