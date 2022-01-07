
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sf_buf {int dummy; } ;
struct dmar_ctx {int rid; TYPE_2__* domain; } ;
typedef int dmar_ctx_entry_t ;
struct TYPE_4__ {TYPE_1__* dmar; } ;
struct TYPE_3__ {int ctx_obj; } ;


 int DMAR_PGF_NOALLOC ;
 int DMAR_PGF_WAITOK ;
 scalar_t__ PCI_RID2BUS (int) ;
 int * dmar_map_pgtbl (int ,scalar_t__,int,struct sf_buf**) ;

__attribute__((used)) static dmar_ctx_entry_t *
dmar_map_ctx_entry(struct dmar_ctx *ctx, struct sf_buf **sfp)
{
 dmar_ctx_entry_t *ctxp;

 ctxp = dmar_map_pgtbl(ctx->domain->dmar->ctx_obj, 1 +
     PCI_RID2BUS(ctx->rid), DMAR_PGF_NOALLOC | DMAR_PGF_WAITOK, sfp);
 ctxp += ctx->rid & 0xff;
 return (ctxp);
}
