
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef TYPE_1__* if_ctx_t ;
struct TYPE_5__ {int ifc_flags; } ;


 int IFC_IN_DETACH ;
 int STATE_LOCK (TYPE_1__*) ;
 int STATE_UNLOCK (TYPE_1__*) ;

uint8_t
iflib_in_detach(if_ctx_t ctx)
{
 bool in_detach;

 STATE_LOCK(ctx);
 in_detach = !!(ctx->ifc_flags & IFC_IN_DETACH);
 STATE_UNLOCK(ctx);
 return (in_detach);
}
