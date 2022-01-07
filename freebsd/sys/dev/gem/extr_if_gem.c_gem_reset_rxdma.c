
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ip {int dummy; } ;
struct gem_softc {int sc_flags; int sc_rxfifosize; scalar_t__ sc_rxptr; TYPE_2__* sc_rxsoft; TYPE_1__* sc_ifp; } ;
struct TYPE_4__ {int * rxs_mbuf; } ;
struct TYPE_3__ {int if_drv_flags; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int ETHER_ALIGN ;
 int ETHER_HDR_LEN ;
 int GEM_BANK1_READ_4 (struct gem_softc*,int ) ;
 int GEM_BANK1_WRITE_4 (struct gem_softc*,int ,int) ;
 int GEM_CDRXADDR (struct gem_softc*,int ) ;
 int GEM_CDSYNC (struct gem_softc*,int) ;
 int GEM_MAC_RX_DONE ;
 int GEM_MAC_RX_FRAME_CNT ;
 int GEM_MAC_RX_MASK ;
 int GEM_NRXDESC ;
 int GEM_PCI66 ;
 int GEM_RX_BLANKING ;
 int GEM_RX_BLANKING_TIME_SHIFT ;
 int GEM_RX_CONFIG ;
 int GEM_RX_CONFIG_CXM_START_SHFT ;
 int GEM_RX_CONFIG_FBOFF_SHFT ;
 int GEM_RX_CONFIG_FIFO_THRS_SHIFT ;
 int GEM_RX_CONFIG_RXDMA_EN ;
 int GEM_RX_KICK ;
 int GEM_RX_PAUSE_THRESH ;
 int GEM_RX_RING_PTR_HI ;
 int GEM_RX_RING_PTR_LO ;
 int GEM_THRSH_1024 ;
 int GEM_UPDATE_RXDESC (struct gem_softc*,int) ;
 int IFF_DRV_RUNNING ;
 void gem_init_locked (struct gem_softc*) ;
 scalar_t__ gem_reset_rx (struct gem_softc*) ;
 int gem_ringsize (int) ;
 int gem_setladrf (struct gem_softc*) ;

__attribute__((used)) static void
gem_reset_rxdma(struct gem_softc *sc)
{
 int i;

 if (gem_reset_rx(sc) != 0) {
  sc->sc_ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
  return (gem_init_locked(sc));
 }
 for (i = 0; i < GEM_NRXDESC; i++)
  if (sc->sc_rxsoft[i].rxs_mbuf != ((void*)0))
   GEM_UPDATE_RXDESC(sc, i);
 sc->sc_rxptr = 0;
 GEM_CDSYNC(sc, BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);


 GEM_BANK1_WRITE_4(sc, GEM_RX_RING_PTR_HI, 0);
 GEM_BANK1_WRITE_4(sc, GEM_RX_RING_PTR_LO, GEM_CDRXADDR(sc, 0));
 GEM_BANK1_WRITE_4(sc, GEM_RX_KICK, GEM_NRXDESC - 4);
 GEM_BANK1_WRITE_4(sc, GEM_RX_CONFIG,
     gem_ringsize(GEM_NRXDESC ) |
     ((ETHER_HDR_LEN + sizeof(struct ip)) <<
     GEM_RX_CONFIG_CXM_START_SHFT) |
     (GEM_THRSH_1024 << GEM_RX_CONFIG_FIFO_THRS_SHIFT) |
     (ETHER_ALIGN << GEM_RX_CONFIG_FBOFF_SHFT));

 GEM_BANK1_WRITE_4(sc, GEM_RX_BLANKING,
     ((6 * (sc->sc_flags & GEM_PCI66) != 0 ? 2 : 1) <<
     GEM_RX_BLANKING_TIME_SHIFT) | 6);
 GEM_BANK1_WRITE_4(sc, GEM_RX_PAUSE_THRESH,
     (3 * sc->sc_rxfifosize / 256) |
     ((sc->sc_rxfifosize / 256) << 12));
 GEM_BANK1_WRITE_4(sc, GEM_RX_CONFIG,
     GEM_BANK1_READ_4(sc, GEM_RX_CONFIG) | GEM_RX_CONFIG_RXDMA_EN);
 GEM_BANK1_WRITE_4(sc, GEM_MAC_RX_MASK,
     GEM_MAC_RX_DONE | GEM_MAC_RX_FRAME_CNT);




 gem_setladrf(sc);
}
