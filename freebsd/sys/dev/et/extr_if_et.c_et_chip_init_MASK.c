#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct ifnet {int /*<<< orphan*/  if_mtu; } ;
struct et_softc {int sc_flags; struct ifnet* ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct et_softc*,int /*<<< orphan*/ ,scalar_t__) ; 
 int ET_FLAG_MSI ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ET_LOOPBACK ; 
 int ET_MEM_RXSIZE_DEFAULT ; 
 int ET_MEM_SIZE ; 
 scalar_t__ ET_MEM_TXSIZE_EX ; 
 int /*<<< orphan*/  ET_MEM_UNIT ; 
 int /*<<< orphan*/  ET_MMC_CTRL ; 
 scalar_t__ ET_MMC_CTRL_ENABLE ; 
 int /*<<< orphan*/  ET_MSI_CFG ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ ET_QUEUE_ADDR_END ; 
 scalar_t__ ET_QUEUE_ADDR_START ; 
 int ET_RXMAC_CUT_THRU_FRMLEN ; 
 int /*<<< orphan*/  ET_RXQUEUE_END ; 
 int /*<<< orphan*/  ET_RXQUEUE_START ; 
 int /*<<< orphan*/  ET_TIMER ; 
 int /*<<< orphan*/  ET_TXQUEUE_END ; 
 int /*<<< orphan*/  ET_TXQUEUE_START ; 
 int /*<<< orphan*/  FUNC3 (struct et_softc*) ; 
 int FUNC4 (struct et_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct et_softc*) ; 
 int FUNC6 (struct et_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct et_softc*) ; 
 int FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct et_softc *sc)
{
	struct ifnet *ifp;
	uint32_t rxq_end;
	int error, frame_len, rxmem_size;

	ifp = sc->ifp;
	/*
	 * Split 16Kbytes internal memory between TX and RX
	 * according to frame length.
	 */
	frame_len = FUNC1(ifp->if_mtu);
	if (frame_len < 2048) {
		rxmem_size = ET_MEM_RXSIZE_DEFAULT;
	} else if (frame_len <= ET_RXMAC_CUT_THRU_FRMLEN) {
		rxmem_size = ET_MEM_SIZE / 2;
	} else {
		rxmem_size = ET_MEM_SIZE -
		FUNC8(frame_len + ET_MEM_TXSIZE_EX, ET_MEM_UNIT);
	}
	rxq_end = FUNC2(rxmem_size);

	FUNC0(sc, ET_RXQUEUE_START, ET_QUEUE_ADDR_START);
	FUNC0(sc, ET_RXQUEUE_END, rxq_end);
	FUNC0(sc, ET_TXQUEUE_START, rxq_end + 1);
	FUNC0(sc, ET_TXQUEUE_END, ET_QUEUE_ADDR_END);

	/* No loopback */
	FUNC0(sc, ET_LOOPBACK, 0);

	/* Clear MSI configure */
	if ((sc->sc_flags & ET_FLAG_MSI) == 0)
		FUNC0(sc, ET_MSI_CFG, 0);

	/* Disable timer */
	FUNC0(sc, ET_TIMER, 0);

	/* Initialize MAC */
	FUNC3(sc);

	/* Enable memory controllers */
	FUNC0(sc, ET_MMC_CTRL, ET_MMC_CTRL_ENABLE);

	/* Initialize RX MAC */
	FUNC5(sc);

	/* Initialize TX MAC */
	FUNC7(sc);

	/* Initialize RX DMA engine */
	error = FUNC4(sc);
	if (error)
		return (error);

	/* Initialize TX DMA engine */
	error = FUNC6(sc);
	if (error)
		return (error);

	return (0);
}