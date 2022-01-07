
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int vge_rx_commit; struct vge_rxdesc* vge_rxdesc; } ;
struct vge_softc {TYPE_2__ vge_cdata; } ;
struct vge_rxdesc {struct vge_rxdesc* rxd_prev; TYPE_1__* rx_desc; } ;
struct TYPE_3__ {scalar_t__ vge_sts; scalar_t__ vge_ctl; } ;


 int VGE_RDSTS_OWN ;
 int VGE_RXCHUNK ;
 scalar_t__ htole32 (int ) ;

__attribute__((used)) static void
vge_discard_rxbuf(struct vge_softc *sc, int prod)
{
 struct vge_rxdesc *rxd;
 int i;

 rxd = &sc->vge_cdata.vge_rxdesc[prod];
 rxd->rx_desc->vge_sts = 0;
 rxd->rx_desc->vge_ctl = 0;
 if ((prod % VGE_RXCHUNK) == (VGE_RXCHUNK - 1)) {
  for (i = VGE_RXCHUNK; i > 0; i--) {
   rxd->rx_desc->vge_sts = htole32(VGE_RDSTS_OWN);
   rxd = rxd->rxd_prev;
  }
  sc->vge_cdata.vge_rx_commit += VGE_RXCHUNK;
 }
}
