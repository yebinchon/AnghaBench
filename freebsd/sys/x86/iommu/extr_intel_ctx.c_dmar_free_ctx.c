
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dmar_unit {int dummy; } ;
struct dmar_ctx {TYPE_1__* domain; } ;
struct TYPE_2__ {struct dmar_unit* dmar; } ;


 int DMAR_LOCK (struct dmar_unit*) ;
 int dmar_free_ctx_locked (struct dmar_unit*,struct dmar_ctx*) ;

void
dmar_free_ctx(struct dmar_ctx *ctx)
{
 struct dmar_unit *dmar;

 dmar = ctx->domain->dmar;
 DMAR_LOCK(dmar);
 dmar_free_ctx_locked(dmar, ctx);
}
