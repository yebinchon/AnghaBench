
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sx {int dummy; } ;
typedef TYPE_1__* if_ctx_t ;
struct TYPE_3__ {struct sx ifc_ctx_sx; } ;



struct sx *
iflib_ctx_lock_get(if_ctx_t ctx)
{

 return (&ctx->ifc_ctx_sx);
}
