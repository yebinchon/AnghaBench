
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* if_ctx_t ;
struct TYPE_5__ {int ifc_flags; } ;


 int IFC_IN_DETACH ;
 int STATE_LOCK (TYPE_1__*) ;
 int STATE_UNLOCK (TYPE_1__*) ;

void
iflib_set_detach(if_ctx_t ctx)
{
 STATE_LOCK(ctx);
 ctx->ifc_flags |= IFC_IN_DETACH;
 STATE_UNLOCK(ctx);
}
