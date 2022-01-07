
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statsblobv1 {scalar_t__ abi; } ;
struct sb_visitcb_ctx {void* usrctx; int * cb; } ;
typedef int * stats_blob_visitcb_t ;


 int EINVAL ;
 scalar_t__ STATS_ABI_V1 ;
 int stats_v1_blob_iter (struct statsblobv1*,int ,struct sb_visitcb_ctx*,int ) ;
 int stats_v1_itercb_visit ;

int
stats_v1_blob_visit(struct statsblobv1 *sb, stats_blob_visitcb_t func,
    void *usrctx)
{
 struct sb_visitcb_ctx vctx;

 if (sb == ((void*)0) || sb->abi != STATS_ABI_V1 || func == ((void*)0))
  return (EINVAL);

 vctx.cb = func;
 vctx.usrctx = usrctx;

 stats_v1_blob_iter(sb, stats_v1_itercb_visit, &vctx, 0);

 return (0);
}
