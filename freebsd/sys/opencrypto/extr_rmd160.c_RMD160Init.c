
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * state; scalar_t__ count; } ;
typedef TYPE_1__ RMD160_CTX ;


 int H0 ;
 int H1 ;
 int H2 ;
 int H3 ;
 int H4 ;

void
RMD160Init(RMD160_CTX *ctx)
{
 ctx->count = 0;
 ctx->state[0] = H0;
 ctx->state[1] = H1;
 ctx->state[2] = H2;
 ctx->state[3] = H3;
 ctx->state[4] = H4;
}
