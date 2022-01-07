
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct sglist {TYPE_1__* sg_segs; } ;
struct TYPE_5__ {scalar_t__ ds_addr; } ;
typedef TYPE_2__ bus_dma_segment_t ;
struct TYPE_4__ {int ss_len; scalar_t__ ss_paddr; } ;


 int memcpy (void*,void*,int ) ;

void
storvsc_copy_from_bounce_buf_to_sgl(bus_dma_segment_t *dest_sgl,
        unsigned int dest_sgl_count,
        struct sglist* src_sgl,
        uint64_t seg_bits)
{
 int sgl_idx = 0;

 for (sgl_idx = 0; sgl_idx < dest_sgl_count; sgl_idx++) {
  if (seg_bits & (1 << sgl_idx)) {
   memcpy((void*)(dest_sgl[sgl_idx].ds_addr),
       (void*)(src_sgl->sg_segs[sgl_idx].ss_paddr),
       src_sgl->sg_segs[sgl_idx].ss_len);
  }
 }
}
