
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* if_shared_ctx_t ;
typedef TYPE_2__* if_pseudo_t ;
struct TYPE_9__ {int * ip_ifc; int * ip_lladdr_tag; int * ip_detach_tag; int * ip_dc; TYPE_1__* ip_sctx; } ;
struct TYPE_8__ {char* isc_name; } ;


 int EVENTHANDLER_DEREGISTER (int ,int *) ;
 int EVENTHANDLER_PRI_ANY ;
 void* EVENTHANDLER_REGISTER (int ,int ,int *,int ) ;
 int IFC_NOGROUP ;
 int M_IFLIB ;
 int M_WAITOK ;
 int M_ZERO ;
 int * devclass_create (char*) ;
 int free (TYPE_2__*,int ) ;
 int if_clone_detach (int *) ;
 int * if_clone_simple (char*,int ,int ,int ) ;
 int ifc_flags_set (int *,int ) ;
 int iflib_clone_create ;
 int iflib_clone_destroy ;
 int iflib_ifdetach ;
 int iflib_iflladdr ;
 int iflib_ip_insert (TYPE_2__*) ;
 int * iflib_ip_lookup (char*) ;
 int iflladdr_event ;
 int ifnet_departure_event ;
 TYPE_2__* malloc (int,int ,int) ;
 int printf (char*,...) ;

if_pseudo_t
iflib_clone_register(if_shared_ctx_t sctx)
{
 if_pseudo_t ip;

 if (sctx->isc_name == ((void*)0)) {
  printf("iflib_clone_register failed - shared_ctx needs to have a device name\n");
  return (((void*)0));
 }
 if (iflib_ip_lookup(sctx->isc_name) != ((void*)0)) {
  printf("iflib_clone_register failed - shared_ctx %s alread registered\n",
      sctx->isc_name);
  return (((void*)0));
 }
 ip = malloc(sizeof(*ip), M_IFLIB, M_WAITOK|M_ZERO);
 ip->ip_sctx = sctx;
 ip->ip_dc = devclass_create(sctx->isc_name);
 if (ip->ip_dc == ((void*)0))
  goto fail_clone;

 ip->ip_ifc = if_clone_simple(sctx->isc_name, iflib_clone_create, iflib_clone_destroy, 0);
 if (ip->ip_ifc == ((void*)0)) {
  printf("clone_simple failed -- cloned %s  devices will not be available\n", sctx->isc_name);
  goto fail_clone;
 }
 ifc_flags_set(ip->ip_ifc, IFC_NOGROUP);
 ip->ip_lladdr_tag = EVENTHANDLER_REGISTER(iflladdr_event,
            iflib_iflladdr, ((void*)0), EVENTHANDLER_PRI_ANY);
 if (ip->ip_lladdr_tag == ((void*)0))
  goto fail_addr;
 ip->ip_detach_tag = EVENTHANDLER_REGISTER(ifnet_departure_event,
            iflib_ifdetach, ((void*)0), EVENTHANDLER_PRI_ANY);

 if (ip->ip_detach_tag == ((void*)0))
  goto fail_depart;

 iflib_ip_insert(ip);
 return (ip);
 fail_depart:
 EVENTHANDLER_DEREGISTER(iflladdr_event, ip->ip_lladdr_tag);
 fail_addr:
 if_clone_detach(ip->ip_ifc);
 fail_clone:
 free(ip, M_IFLIB);
 return (((void*)0));
}
