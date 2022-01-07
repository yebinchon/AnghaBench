
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct statsblobv1 {scalar_t__ abi; int tplhash; } ;
struct sbuf {int dummy; } ;
struct sb_tostrcb_ctx {int fmt; int flags; int * tpl; struct sbuf* buf; } ;
typedef enum sb_str_fmt { ____Placeholder_sb_str_fmt } sb_str_fmt ;


 int EINVAL ;
 int SB_IT_NULLVOI ;
 int SB_IT_NULLVOISTAT ;
 int SB_STRFMT_NUM_FMTS ;
 int SB_TOSTR_META ;
 int SB_TOSTR_OBJDUMP ;
 scalar_t__ STATS_ABI_V1 ;
 int sbuf_error (struct sbuf*) ;
 scalar_t__ stats_tpl_fetch (int ,int **) ;
 int stats_tpl_fetch_allocid (int *,int ) ;
 int stats_v1_blob_iter (struct statsblobv1*,int ,struct sb_tostrcb_ctx*,int) ;
 int stats_v1_itercb_tostr ;

int
stats_v1_blob_tostr(struct statsblobv1 *sb, struct sbuf *buf,
    enum sb_str_fmt fmt, uint32_t flags)
{
 struct sb_tostrcb_ctx sctx;
 uint32_t iflags;

 if (sb == ((void*)0) || sb->abi != STATS_ABI_V1 || buf == ((void*)0) ||
     fmt >= SB_STRFMT_NUM_FMTS)
  return (EINVAL);

 sctx.buf = buf;
 sctx.fmt = fmt;
 sctx.flags = flags;

 if (flags & SB_TOSTR_META) {
  if (stats_tpl_fetch(stats_tpl_fetch_allocid(((void*)0), sb->tplhash),
      &sctx.tpl))
   return (EINVAL);
 } else
  sctx.tpl = ((void*)0);

 iflags = 0;
 if (flags & SB_TOSTR_OBJDUMP)
  iflags |= (SB_IT_NULLVOI | SB_IT_NULLVOISTAT);
 stats_v1_blob_iter(sb, stats_v1_itercb_tostr, &sctx, iflags);

 return (sbuf_error(buf));
}
