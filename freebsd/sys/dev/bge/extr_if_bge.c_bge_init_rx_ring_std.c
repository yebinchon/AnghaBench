
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bge_rx_std_ring_map; int bge_rx_std_ring_tag; } ;
struct TYPE_4__ {int bge_rx_std_ring; } ;
struct bge_softc {scalar_t__ bge_std; TYPE_1__ bge_cdata; TYPE_2__ bge_ldata; } ;


 int BGE_INC (scalar_t__,int) ;
 int BGE_MBX_RX_STD_PROD_LO ;
 int BGE_STD_RX_RING_CNT ;
 int BGE_STD_RX_RING_SZ ;
 int BUS_DMASYNC_PREWRITE ;
 int bge_newbuf_std (struct bge_softc*,int) ;
 int bge_writembx (struct bge_softc*,int ,int) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bzero (int ,int ) ;

__attribute__((used)) static int
bge_init_rx_ring_std(struct bge_softc *sc)
{
 int error, i;

 bzero(sc->bge_ldata.bge_rx_std_ring, BGE_STD_RX_RING_SZ);
 sc->bge_std = 0;
 for (i = 0; i < BGE_STD_RX_RING_CNT; i++) {
  if ((error = bge_newbuf_std(sc, i)) != 0)
   return (error);
  BGE_INC(sc->bge_std, BGE_STD_RX_RING_CNT);
 }

 bus_dmamap_sync(sc->bge_cdata.bge_rx_std_ring_tag,
     sc->bge_cdata.bge_rx_std_ring_map, BUS_DMASYNC_PREWRITE);

 sc->bge_std = 0;
 bge_writembx(sc, BGE_MBX_RX_STD_PROD_LO, BGE_STD_RX_RING_CNT - 1);

 return (0);
}
