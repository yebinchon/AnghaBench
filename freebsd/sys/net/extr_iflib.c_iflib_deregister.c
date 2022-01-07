
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int kobj_t ;
typedef int if_t ;
typedef TYPE_1__* if_ctx_t ;
struct TYPE_6__ {int ifc_media; int ifc_ifp; } ;


 int CTX_LOCK_DESTROY (TYPE_1__*) ;
 int STATE_LOCK_DESTROY (TYPE_1__*) ;
 int if_free (int ) ;
 int iflib_unregister_vlan_handlers (TYPE_1__*) ;
 int ifmedia_removeall (int *) ;
 int kobj_delete (int ,int *) ;

__attribute__((used)) static void
iflib_deregister(if_ctx_t ctx)
{
 if_t ifp = ctx->ifc_ifp;


 ifmedia_removeall(&ctx->ifc_media);


 iflib_unregister_vlan_handlers(ctx);


 kobj_delete((kobj_t) ctx, ((void*)0));


 if_free(ifp);

 STATE_LOCK_DESTROY(ctx);


 CTX_LOCK_DESTROY(ctx);
}
