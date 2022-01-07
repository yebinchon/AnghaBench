
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* if_ctx_t ;
struct TYPE_3__ {int * ifc_vlan_detach_event; int * ifc_vlan_attach_event; } ;


 int EVENTHANDLER_DEREGISTER (int ,int *) ;
 int vlan_config ;
 int vlan_unconfig ;

__attribute__((used)) static void
iflib_unregister_vlan_handlers(if_ctx_t ctx)
{

 if (ctx->ifc_vlan_attach_event != ((void*)0)) {
  EVENTHANDLER_DEREGISTER(vlan_config, ctx->ifc_vlan_attach_event);
  ctx->ifc_vlan_attach_event = ((void*)0);
 }
 if (ctx->ifc_vlan_detach_event != ((void*)0)) {
  EVENTHANDLER_DEREGISTER(vlan_unconfig, ctx->ifc_vlan_detach_event);
  ctx->ifc_vlan_detach_event = ((void*)0);
 }

}
