
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * bge_rx_std_seglen; } ;
struct TYPE_3__ {struct bge_rx_bd* bge_rx_std_ring; } ;
struct bge_softc {size_t bge_std; TYPE_2__ bge_cdata; TYPE_1__ bge_ldata; } ;
struct bge_rx_bd {int bge_idx; int bge_len; int bge_flags; } ;


 int BGE_INC (size_t,int ) ;
 int BGE_RXBDFLAG_END ;
 int BGE_STD_RX_RING_CNT ;

__attribute__((used)) static __inline void
bge_rxreuse_std(struct bge_softc *sc, int i)
{
 struct bge_rx_bd *r;

 r = &sc->bge_ldata.bge_rx_std_ring[sc->bge_std];
 r->bge_flags = BGE_RXBDFLAG_END;
 r->bge_len = sc->bge_cdata.bge_rx_std_seglen[i];
 r->bge_idx = i;
 BGE_INC(sc->bge_std, BGE_STD_RX_RING_CNT);
}
