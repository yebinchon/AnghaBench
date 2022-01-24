#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct msk_rxdesc {struct msk_rx_desc* rx_le; struct mbuf* rx_m; } ;
struct msk_rx_desc {void* msk_control; } ;
struct TYPE_2__ {struct msk_rxdesc* msk_jumbo_rxdesc; } ;
struct msk_if_softc {TYPE_1__ msk_cdata; } ;
struct mbuf {int m_len; } ;

/* Variables and functions */
 int HW_OWNER ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MSK_JUMBO_RX_RING_CNT ; 
 int OP_ADDR64 ; 
 int OP_PACKET ; 
 void* FUNC1 (int) ; 

__attribute__((used)) static __inline void
FUNC2(struct msk_if_softc *sc_if, int	idx)
{
	struct msk_rx_desc *rx_le;
	struct msk_rxdesc *rxd;
	struct mbuf *m;

#ifdef MSK_64BIT_DMA
	rxd = &sc_if->msk_cdata.msk_jumbo_rxdesc[idx];
	rx_le = rxd->rx_le;
	rx_le->msk_control = htole32(OP_ADDR64 | HW_OWNER);
	MSK_INC(idx, MSK_JUMBO_RX_RING_CNT);
#endif
	rxd = &sc_if->msk_cdata.msk_jumbo_rxdesc[idx];
	m = rxd->rx_m;
	rx_le = rxd->rx_le;
	rx_le->msk_control = FUNC1(m->m_len | OP_PACKET | HW_OWNER);
}