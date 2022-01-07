
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct voistat {size_t stype; size_t dtype; int dsz; int data_off; int flags; int errs; } ;
struct voi {size_t id; size_t dtype; int stats_off; int voistatmaxid; int flags; } ;
struct statsblobv1 {int tplhash; int statsdata_off; int stats_off; int flags; int lastrst; int created; int cursz; int maxsz; int endian; int abi; } ;
struct sbuf {int dummy; } ;
struct sb_tostrcb_ctx {int flags; int fmt; TYPE_1__* tpl; struct sbuf* buf; } ;
struct sb_iter_ctx {int flags; int vsslot; int vslot; struct sb_tostrcb_ctx* usrctx; } ;
struct metablob {TYPE_2__* voi_meta; } ;
struct TYPE_4__ {char* name; } ;
struct TYPE_3__ {struct metablob* mb; } ;


 void* BLOB_OFFSET (struct statsblobv1*,int ) ;
 int SB_IT_FIRST_CB ;
 int SB_IT_FIRST_VOISTAT ;
 int SB_TOSTR_OBJDUMP ;
 int sbuf_printf (struct sbuf*,char*,...) ;
 int stats_voistatdata_tostr (void*,size_t,size_t,int ,int ,struct sbuf*,int) ;
 int * vs_stype2name ;
 int * vsd_dtype2name ;

__attribute__((used)) static void
stats_v1_itercb_tostr_freeform(struct statsblobv1 *sb, struct voi *v,
    struct voistat *vs, struct sb_iter_ctx *ctx)
{
 struct sb_tostrcb_ctx *sctx;
 struct metablob *tpl_mb;
 struct sbuf *buf;
 void *vsd;
 uint8_t dump;

 sctx = ctx->usrctx;
 buf = sctx->buf;
 tpl_mb = sctx->tpl ? sctx->tpl->mb : ((void*)0);
 dump = ((sctx->flags & SB_TOSTR_OBJDUMP) != 0);

 if (ctx->flags & SB_IT_FIRST_CB) {
  sbuf_printf(buf, "struct statsblobv1@%p", sb);
  if (dump) {
   sbuf_printf(buf, ", abi=%hhu, endian=%hhu, maxsz=%hu, "
       "cursz=%hu, created=%jd, lastrst=%jd, flags=0x%04hx, "
       "stats_off=%hu, statsdata_off=%hu",
       sb->abi, sb->endian, sb->maxsz, sb->cursz,
       sb->created, sb->lastrst, sb->flags, sb->stats_off,
       sb->statsdata_off);
  }
  sbuf_printf(buf, ", tplhash=%u", sb->tplhash);
 }

 if (ctx->flags & SB_IT_FIRST_VOISTAT) {
  sbuf_printf(buf, "\n\tvois[%hd]: id=%hd", ctx->vslot, v->id);
  if (v->id < 0)
   return;
  sbuf_printf(buf, ", name=\"%s\"", (tpl_mb == ((void*)0)) ? "" :
      tpl_mb->voi_meta[v->id].name);
  if (dump)
      sbuf_printf(buf, ", flags=0x%04hx, dtype=%s, "
      "voistatmaxid=%hhd, stats_off=%hu", v->flags,
      vsd_dtype2name[v->dtype], v->voistatmaxid, v->stats_off);
 }

 if (!dump && vs->stype <= 0)
  return;

 sbuf_printf(buf, "\n\t\tvois[%hd]stat[%hhd]: stype=", v->id, ctx->vsslot);
 if (vs->stype < 0) {
  sbuf_printf(buf, "%hhd", vs->stype);
  return;
 } else
  sbuf_printf(buf, "%s, errs=%hu", vs_stype2name[vs->stype],
      vs->errs);
 vsd = BLOB_OFFSET(sb, vs->data_off);
 if (dump)
  sbuf_printf(buf, ", flags=0x%04x, dtype=%s, dsz=%hu, "
      "data_off=%hu", vs->flags, vsd_dtype2name[vs->dtype],
      vs->dsz, vs->data_off);

 sbuf_printf(buf, "\n\t\t\tvoistatdata: ");
 stats_voistatdata_tostr(vsd, v->dtype, vs->dtype, vs->dsz,
     sctx->fmt, buf, dump);
}
