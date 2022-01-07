
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct sge_fl {size_t cidx; scalar_t__ zone; size_t size; int entry_tag; struct rx_sw_desc* sdesc; int credits; } ;
struct rx_sw_desc {int flags; int * m; int * rxsd_cl; int map; } ;
typedef int adapter_t ;


 int MT_DATA ;
 int M_EXT ;
 int M_NOWAIT ;
 int RX_SW_DESC_INUSE ;
 int bus_dmamap_destroy (int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int m_init (int *,int ,int ,int ) ;
 int uma_zfree (scalar_t__,int *) ;
 scalar_t__ zone_mbuf ;
 scalar_t__ zone_pack ;

__attribute__((used)) static void
free_rx_bufs(adapter_t *sc, struct sge_fl *q)
{
 u_int cidx = q->cidx;

 while (q->credits--) {
  struct rx_sw_desc *d = &q->sdesc[cidx];

  if (d->flags & RX_SW_DESC_INUSE) {
   bus_dmamap_unload(q->entry_tag, d->map);
   bus_dmamap_destroy(q->entry_tag, d->map);
   if (q->zone == zone_pack) {
    m_init(d->m, M_NOWAIT, MT_DATA, M_EXT);
    uma_zfree(zone_pack, d->m);
   } else {
    m_init(d->m, M_NOWAIT, MT_DATA, 0);
    uma_zfree(zone_mbuf, d->m);
    uma_zfree(q->zone, d->rxsd_cl);
   }
  }

  d->rxsd_cl = ((void*)0);
  d->m = ((void*)0);
  if (++cidx == q->size)
   cidx = 0;
 }
}
