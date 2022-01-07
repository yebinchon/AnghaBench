
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct et_rxdesc {int rd_ctrl; } ;
struct et_rxbuf_data {TYPE_1__* rbd_ring; } ;
struct TYPE_2__ {int rr_dmap; int rr_dtag; struct et_rxdesc* rr_desc; } ;


 int BUS_DMASYNC_PREWRITE ;
 int ET_RDCTRL_BUFIDX_MASK ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int htole32 (int) ;

__attribute__((used)) static void
et_rxbuf_discard(struct et_rxbuf_data *rbd, int buf_idx)
{
 struct et_rxdesc *desc;

 desc = &rbd->rbd_ring->rr_desc[buf_idx];
 desc->rd_ctrl = htole32(buf_idx & ET_RDCTRL_BUFIDX_MASK);
 bus_dmamap_sync(rbd->rbd_ring->rr_dtag, rbd->rbd_ring->rr_dmap,
     BUS_DMASYNC_PREWRITE);
}
