
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct sglist {TYPE_1__* sg_segs; } ;
struct TYPE_5__ {int ds_len; scalar_t__ ds_addr; } ;
typedef TYPE_2__ bus_dma_segment_t ;
struct TYPE_4__ {int ss_len; scalar_t__ ss_paddr; } ;


 int memcpy (void*,void*,int ) ;

__attribute__((used)) static void
storvsc_copy_sgl_to_bounce_buf(struct sglist *bounce_sgl,
          bus_dma_segment_t *orig_sgl,
          unsigned int orig_sgl_count,
          uint64_t seg_bits)
{
 int src_sgl_idx = 0;

 for (src_sgl_idx = 0; src_sgl_idx < orig_sgl_count; src_sgl_idx++) {
  if (seg_bits & (1 << src_sgl_idx)) {
   memcpy((void*)bounce_sgl->sg_segs[src_sgl_idx].ss_paddr,
       (void*)orig_sgl[src_sgl_idx].ds_addr,
       orig_sgl[src_sgl_idx].ds_len);

   bounce_sgl->sg_segs[src_sgl_idx].ss_len =
       orig_sgl[src_sgl_idx].ds_len;
  }
 }
}
