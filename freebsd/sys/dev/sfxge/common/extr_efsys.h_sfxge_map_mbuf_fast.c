
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct mbuf {int m_len; } ;
typedef int bus_dmamap_t ;
typedef int bus_dma_tag_t ;
struct TYPE_4__ {int ds_len; int ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;


 int bus_dmamap_load_mbuf_sg (int ,int ,struct mbuf*,TYPE_1__*,int*,int ) ;
 int mtod (struct mbuf*,int ) ;
 int pmap_kextract (int ) ;
 int vm_offset_t ;

__attribute__((used)) static __inline void
sfxge_map_mbuf_fast(bus_dma_tag_t tag, bus_dmamap_t map,
      struct mbuf *m, bus_dma_segment_t *seg)
{

 seg->ds_addr = pmap_kextract(mtod(m, vm_offset_t));
 seg->ds_len = m->m_len;





}
