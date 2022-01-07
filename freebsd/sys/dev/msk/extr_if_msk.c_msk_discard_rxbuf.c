
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msk_rxdesc {struct msk_rx_desc* rx_le; struct mbuf* rx_m; } ;
struct msk_rx_desc {void* msk_control; } ;
struct TYPE_2__ {struct msk_rxdesc* msk_rxdesc; } ;
struct msk_if_softc {TYPE_1__ msk_cdata; } ;
struct mbuf {int m_len; } ;


 int HW_OWNER ;
 int MSK_INC (int,int ) ;
 int MSK_RX_RING_CNT ;
 int OP_ADDR64 ;
 int OP_PACKET ;
 void* htole32 (int) ;

__attribute__((used)) static __inline void
msk_discard_rxbuf(struct msk_if_softc *sc_if, int idx)
{
 struct msk_rx_desc *rx_le;
 struct msk_rxdesc *rxd;
 struct mbuf *m;







 rxd = &sc_if->msk_cdata.msk_rxdesc[idx];
 m = rxd->rx_m;
 rx_le = rxd->rx_le;
 rx_le->msk_control = htole32(m->m_len | OP_PACKET | HW_OWNER);
}
