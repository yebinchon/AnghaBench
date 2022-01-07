
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int if_shared_ctx_t ;
typedef TYPE_1__* if_ctx_t ;
struct TYPE_3__ {int ifc_sctx; } ;



if_shared_ctx_t
iflib_get_sctx(if_ctx_t ctx)
{

 return (ctx->ifc_sctx);
}
