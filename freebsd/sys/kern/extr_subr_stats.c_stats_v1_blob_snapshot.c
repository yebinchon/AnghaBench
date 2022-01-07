
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct statsblobv1 {scalar_t__ abi; int lastrst; } ;


 int EINVAL ;
 int SB_CLONE_RSTSRC ;
 scalar_t__ STATS_ABI_V1 ;
 int stats_sbinuptime () ;
 int stats_v1_blob_clone (struct statsblobv1**,size_t,struct statsblobv1*,int) ;
 int stats_v1_blob_finalise (struct statsblobv1*) ;
 int stats_v1_blob_iter (struct statsblobv1*,int ,int *,int ) ;
 int stats_v1_icb_reset_voistat ;

int
stats_v1_blob_snapshot(struct statsblobv1 **dst, size_t dstmaxsz,
    struct statsblobv1 *src, uint32_t flags)
{
 int error;

 if (src != ((void*)0) && src->abi == STATS_ABI_V1) {
  error = stats_v1_blob_clone(dst, dstmaxsz, src, flags);
  if (!error) {
   if (flags & SB_CLONE_RSTSRC) {
    stats_v1_blob_iter(src,
        stats_v1_icb_reset_voistat, ((void*)0), 0);
    src->lastrst = stats_sbinuptime();
   }
   stats_v1_blob_finalise(*dst);
  }
 } else
  error = EINVAL;

 return (error);
}
