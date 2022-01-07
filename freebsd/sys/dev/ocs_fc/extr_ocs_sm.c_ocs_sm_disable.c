
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * current_state; } ;
typedef TYPE_1__ ocs_sm_ctx_t ;



void
ocs_sm_disable(ocs_sm_ctx_t *ctx)
{
 ctx->current_state = ((void*)0);
}
