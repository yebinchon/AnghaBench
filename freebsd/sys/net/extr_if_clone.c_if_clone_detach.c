
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct if_clone {scalar_t__ ifc_type; int ifc_iflist; scalar_t__ ifcs_minifs; } ;


 int IF_CLONERS_LOCK () ;
 int IF_CLONERS_UNLOCK () ;
 int IF_CLONE_REMREF (struct if_clone*) ;
 int LIST_EMPTY (int *) ;
 int LIST_FIRST (int *) ;
 int LIST_REMOVE (struct if_clone*,int ) ;
 scalar_t__ SIMPLE ;
 int V_if_cloners_count ;
 int if_clone_destroyif (struct if_clone*,int ) ;
 int ifc_list ;

void
if_clone_detach(struct if_clone *ifc)
{

 IF_CLONERS_LOCK();
 LIST_REMOVE(ifc, ifc_list);
 V_if_cloners_count--;
 IF_CLONERS_UNLOCK();


 if (ifc->ifc_type == SIMPLE)
  ifc->ifcs_minifs = 0;


 while (!LIST_EMPTY(&ifc->ifc_iflist))
  if_clone_destroyif(ifc, LIST_FIRST(&ifc->ifc_iflist));

 IF_CLONE_REMREF(ifc);
}
