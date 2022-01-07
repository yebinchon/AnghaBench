
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct bge_rcb {int bge_maxlen_flags; } ;
struct TYPE_5__ {struct bge_rcb bge_jumbo_rx_rcb; } ;
struct TYPE_6__ {TYPE_2__ bge_info; int bge_rx_jumbo_ring; } ;
struct TYPE_4__ {int bge_rx_jumbo_ring_map; int bge_rx_jumbo_ring_tag; } ;
struct bge_softc {TYPE_3__ bge_ldata; scalar_t__ bge_jumbo; TYPE_1__ bge_cdata; } ;


 int BGE_INC (scalar_t__,int) ;
 int BGE_JUMBO_RX_RING_CNT ;
 int BGE_JUMBO_RX_RING_SZ ;
 int BGE_MBX_RX_JUMBO_PROD_LO ;
 int BGE_RCB_FLAG_USE_EXT_RX_BD ;
 int BGE_RCB_MAXLEN_FLAGS (int ,int ) ;
 int BGE_RX_JUMBO_RCB_MAXLEN_FLAGS ;
 int BUS_DMASYNC_PREWRITE ;
 int CSR_WRITE_4 (struct bge_softc*,int ,int ) ;
 int bge_newbuf_jumbo (struct bge_softc*,int) ;
 int bge_writembx (struct bge_softc*,int ,int) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bzero (int ,int ) ;

__attribute__((used)) static int
bge_init_rx_ring_jumbo(struct bge_softc *sc)
{
 struct bge_rcb *rcb;
 int error, i;

 bzero(sc->bge_ldata.bge_rx_jumbo_ring, BGE_JUMBO_RX_RING_SZ);
 sc->bge_jumbo = 0;
 for (i = 0; i < BGE_JUMBO_RX_RING_CNT; i++) {
  if ((error = bge_newbuf_jumbo(sc, i)) != 0)
   return (error);
  BGE_INC(sc->bge_jumbo, BGE_JUMBO_RX_RING_CNT);
 }

 bus_dmamap_sync(sc->bge_cdata.bge_rx_jumbo_ring_tag,
     sc->bge_cdata.bge_rx_jumbo_ring_map, BUS_DMASYNC_PREWRITE);

 sc->bge_jumbo = 0;


 rcb = &sc->bge_ldata.bge_info.bge_jumbo_rx_rcb;
 rcb->bge_maxlen_flags =
     BGE_RCB_MAXLEN_FLAGS(0, BGE_RCB_FLAG_USE_EXT_RX_BD);
 CSR_WRITE_4(sc, BGE_RX_JUMBO_RCB_MAXLEN_FLAGS, rcb->bge_maxlen_flags);

 bge_writembx(sc, BGE_MBX_RX_JUMBO_PROD_LO, BGE_JUMBO_RX_RING_CNT - 1);

 return (0);
}
