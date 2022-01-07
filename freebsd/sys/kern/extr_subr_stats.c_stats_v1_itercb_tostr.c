
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct voistat {int dummy; } ;
struct voi {int dummy; } ;
struct statsblobv1 {int dummy; } ;
struct sb_tostrcb_ctx {int fmt; int buf; } ;
struct sb_iter_ctx {struct sb_tostrcb_ctx* usrctx; } ;




 int sbuf_error (int ) ;
 int stats_v1_itercb_tostr_freeform (struct statsblobv1*,struct voi*,struct voistat*,struct sb_iter_ctx*) ;
 int stats_v1_itercb_tostr_json (struct statsblobv1*,struct voi*,struct voistat*,struct sb_iter_ctx*) ;

__attribute__((used)) static int
stats_v1_itercb_tostr(struct statsblobv1 *sb, struct voi *v, struct voistat *vs,
    struct sb_iter_ctx *ctx)
{
 struct sb_tostrcb_ctx *sctx;

 sctx = ctx->usrctx;

 switch (sctx->fmt) {
 case 129:
  stats_v1_itercb_tostr_freeform(sb, v, vs, ctx);
  break;
 case 128:
  stats_v1_itercb_tostr_json(sb, v, vs, ctx);
  break;
 default:
  break;
 }

 return (sbuf_error(sctx->buf));
}
