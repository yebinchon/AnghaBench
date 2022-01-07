
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVENTHANDLER_PRI_ANY ;
 void* EVENTHANDLER_REGISTER (int ,int ,void*,int ) ;
 int ifnet_arrival_event ;
 int ifnet_departure_event ;
 void* ipfw_ifattach_event ;
 void* ipfw_ifdetach_event ;
 int ipfw_kifhandler ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ num_vnets ;
 int printf (char*) ;
 int vnet_mtx ;

__attribute__((used)) static void
iface_khandler_register()
{
 int create;

 create = 0;

 mtx_lock(&vnet_mtx);
 if (num_vnets == 0)
  create = 1;
 num_vnets++;
 mtx_unlock(&vnet_mtx);

 if (create == 0)
  return;

 printf("IPFW: starting up interface tracker\n");

 ipfw_ifdetach_event = EVENTHANDLER_REGISTER(
     ifnet_departure_event, ipfw_kifhandler, ((void*)0),
     EVENTHANDLER_PRI_ANY);
 ipfw_ifattach_event = EVENTHANDLER_REGISTER(
     ifnet_arrival_event, ipfw_kifhandler, (void*)((uintptr_t)1),
     EVENTHANDLER_PRI_ANY);
}
