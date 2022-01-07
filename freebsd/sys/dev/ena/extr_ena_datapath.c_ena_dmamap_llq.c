
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ena_com_buf {int len; scalar_t__ paddr; } ;
struct TYPE_3__ {int ds_len; scalar_t__ ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;


 int KASSERT (int,char*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
ena_dmamap_llq(void *arg, bus_dma_segment_t *segs, int nseg, int error)
{
 struct ena_com_buf *ena_buf = arg;

 if (unlikely(error != 0)) {
  ena_buf->paddr = 0;
  return;
 }

 KASSERT(nseg == 1, ("Invalid num of segments for LLQ dma"));

 ena_buf->paddr = segs->ds_addr;
 ena_buf->len = segs->ds_len;
}
