
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ** bge_rx_jumbo_seglen; } ;
struct TYPE_3__ {struct bge_extrx_bd* bge_rx_jumbo_ring; } ;
struct bge_softc {size_t bge_jumbo; TYPE_2__ bge_cdata; TYPE_1__ bge_ldata; } ;
struct bge_extrx_bd {int bge_flags; int bge_idx; int bge_len3; int bge_len2; int bge_len1; int bge_len0; } ;


 int BGE_INC (size_t,int ) ;
 int BGE_JUMBO_RX_RING_CNT ;
 int BGE_RXBDFLAG_END ;
 int BGE_RXBDFLAG_JUMBO_RING ;

__attribute__((used)) static __inline void
bge_rxreuse_jumbo(struct bge_softc *sc, int i)
{
 struct bge_extrx_bd *r;

 r = &sc->bge_ldata.bge_rx_jumbo_ring[sc->bge_jumbo];
 r->bge_flags = BGE_RXBDFLAG_JUMBO_RING | BGE_RXBDFLAG_END;
 r->bge_len0 = sc->bge_cdata.bge_rx_jumbo_seglen[i][0];
 r->bge_len1 = sc->bge_cdata.bge_rx_jumbo_seglen[i][1];
 r->bge_len2 = sc->bge_cdata.bge_rx_jumbo_seglen[i][2];
 r->bge_len3 = sc->bge_cdata.bge_rx_jumbo_seglen[i][3];
 r->bge_idx = i;
 BGE_INC(sc->bge_jumbo, BGE_JUMBO_RX_RING_CNT);
}
