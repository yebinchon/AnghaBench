
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct voistat {int errs; int data_off; int dsz; int dtype; int stype; } ;
struct voi {int dtype; int id; } ;
struct statsblobv1 {int tplhash; } ;
struct sb_visitcb_ctx {int (* cb ) (struct sb_visit*,int ) ;int usrctx; } ;
struct sb_visit {int flags; int vs_errs; int vs_data; int vs_dsz; int vs_dtype; int vs_stype; int voi_dtype; int voi_id; int tplhash; } ;
struct sb_iter_ctx {int flags; struct sb_visitcb_ctx* usrctx; } ;


 int BLOB_OFFSET (struct statsblobv1*,int ) ;
 int SB_IT_FIRST_CB ;
 int SB_IT_FIRST_VOI ;
 int SB_IT_FIRST_VOISTAT ;
 int SB_IT_LAST_CB ;
 int SB_IT_LAST_VOI ;
 int SB_IT_LAST_VOISTAT ;
 int stub1 (struct sb_visit*,int ) ;

__attribute__((used)) static int
stats_v1_itercb_visit(struct statsblobv1 *sb, struct voi *v,
    struct voistat *vs, struct sb_iter_ctx *ctx)
{
 struct sb_visitcb_ctx *vctx;
 struct sb_visit sbv;

 vctx = ctx->usrctx;

 sbv.tplhash = sb->tplhash;
 sbv.voi_id = v->id;
 sbv.voi_dtype = v->dtype;
 sbv.vs_stype = vs->stype;
 sbv.vs_dtype = vs->dtype;
 sbv.vs_dsz = vs->dsz;
 sbv.vs_data = BLOB_OFFSET(sb, vs->data_off);
 sbv.vs_errs = vs->errs;
 sbv.flags = ctx->flags & (SB_IT_FIRST_CB | SB_IT_LAST_CB |
     SB_IT_FIRST_VOI | SB_IT_LAST_VOI | SB_IT_FIRST_VOISTAT |
     SB_IT_LAST_VOISTAT);

 return (vctx->cb(&sbv, vctx->usrctx));
}
