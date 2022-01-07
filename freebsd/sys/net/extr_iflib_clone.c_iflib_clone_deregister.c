
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* if_pseudo_t ;
struct TYPE_5__ {int ip_ifc; int ip_lladdr_tag; int ip_detach_tag; } ;


 int EVENTHANDLER_DEREGISTER (int ,int ) ;
 int M_IFLIB ;
 int free (TYPE_1__*,int ) ;
 int if_clone_detach (int ) ;
 int iflib_ip_delete (TYPE_1__*) ;
 int iflladdr_event ;
 int ifnet_departure_event ;

void
iflib_clone_deregister(if_pseudo_t ip)
{

 iflib_ip_delete(ip);
 EVENTHANDLER_DEREGISTER(ifnet_departure_event, ip->ip_detach_tag);
 EVENTHANDLER_DEREGISTER(iflladdr_event, ip->ip_lladdr_tag);
 if_clone_detach(ip->ip_ifc);

 free(ip, M_IFLIB);
}
