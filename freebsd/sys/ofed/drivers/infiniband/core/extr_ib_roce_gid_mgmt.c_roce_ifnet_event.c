
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;


 int IFNET_EVENT_PCP ;
 scalar_t__ is_vlan_dev (struct ifnet*) ;
 int roce_gid_delete_all_event (struct ifnet*) ;
 int roce_gid_queue_scan_event (struct ifnet*) ;

__attribute__((used)) static void
roce_ifnet_event(void *arg, struct ifnet *ifp, int event)
{
 if (event != IFNET_EVENT_PCP || is_vlan_dev(ifp))
  return;


 roce_gid_delete_all_event(ifp);
 roce_gid_queue_scan_event(ifp);
}
