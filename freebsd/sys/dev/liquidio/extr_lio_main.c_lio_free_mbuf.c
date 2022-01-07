
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lio_mbuf_free_info {int mb; int map; } ;
struct lio_instr_queue {int txtag; } ;


 int BUS_DMASYNC_POSTWRITE ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int m_freem (int ) ;

void
lio_free_mbuf(struct lio_instr_queue *iq, struct lio_mbuf_free_info *finfo)
{

 bus_dmamap_sync(iq->txtag, finfo->map, BUS_DMASYNC_POSTWRITE);
 bus_dmamap_unload(iq->txtag, finfo->map);
 m_freem(finfo->mb);
}
