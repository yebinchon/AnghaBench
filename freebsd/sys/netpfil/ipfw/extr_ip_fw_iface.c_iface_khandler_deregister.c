
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVENTHANDLER_DEREGISTER (int ,int ) ;
 int ifnet_arrival_event ;
 int ifnet_departure_event ;
 int ipfw_ifattach_event ;
 int ipfw_ifdetach_event ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int num_vnets ;
 int vnet_mtx ;

__attribute__((used)) static void
iface_khandler_deregister()
{
 int destroy;

 destroy = 0;
 mtx_lock(&vnet_mtx);
 if (num_vnets == 1)
  destroy = 1;
 num_vnets--;
 mtx_unlock(&vnet_mtx);

 if (destroy == 0)
  return;

 EVENTHANDLER_DEREGISTER(ifnet_arrival_event,
     ipfw_ifattach_event);
 EVENTHANDLER_DEREGISTER(ifnet_departure_event,
     ipfw_ifdetach_event);
}
