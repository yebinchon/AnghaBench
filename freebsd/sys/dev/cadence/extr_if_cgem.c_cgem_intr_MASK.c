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
typedef  int uint32_t ;
struct cgem_softc {int net_ctl_shadow; int /*<<< orphan*/  rxnobufs; int /*<<< orphan*/  rxoverruns; int /*<<< orphan*/  dev; int /*<<< orphan*/  ifp; } ;
typedef  int /*<<< orphan*/  if_t ;

/* Variables and functions */
 int CGEM_INTR_HRESP_NOT_OK ; 
 int CGEM_INTR_RX_COMPLETE ; 
 int CGEM_INTR_RX_OVERRUN ; 
 int CGEM_INTR_RX_USED_READ ; 
 int /*<<< orphan*/  CGEM_INTR_STAT ; 
 int /*<<< orphan*/  FUNC0 (struct cgem_softc*) ; 
 int /*<<< orphan*/  CGEM_NET_CTRL ; 
 int CGEM_NET_CTRL_FLUSH_DPRAM_PKT ; 
 int /*<<< orphan*/  CGEM_RX_STAT ; 
 int CGEM_RX_STAT_HRESP_NOT_OK ; 
 int CGEM_RX_STAT_OVERRUN ; 
 int /*<<< orphan*/  FUNC1 (struct cgem_softc*) ; 
 int IFF_DRV_RUNNING ; 
 int FUNC2 (struct cgem_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cgem_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct cgem_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct cgem_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct cgem_softc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(void *arg)
{
	struct cgem_softc *sc = (struct cgem_softc *)arg;
	if_t ifp = sc->ifp;
	uint32_t istatus;

	FUNC0(sc);

	if ((FUNC9(ifp) & IFF_DRV_RUNNING) == 0) {
		FUNC1(sc);
		return;
	}

	/* Read interrupt status and immediately clear the bits. */
	istatus = FUNC2(sc, CGEM_INTR_STAT);
	FUNC3(sc, CGEM_INTR_STAT, istatus);

	/* Packets received. */
	if ((istatus & CGEM_INTR_RX_COMPLETE) != 0)
		FUNC6(sc);

	/* Free up any completed transmit buffers. */
	FUNC4(sc);

	/* Hresp not ok.  Something is very bad with DMA.  Try to clear. */
	if ((istatus & CGEM_INTR_HRESP_NOT_OK) != 0) {
		FUNC8(sc->dev, "cgem_intr: hresp not okay! "
			      "rx_status=0x%x\n", FUNC2(sc, CGEM_RX_STAT));
		FUNC3(sc, CGEM_RX_STAT, CGEM_RX_STAT_HRESP_NOT_OK);
	}

	/* Receiver overrun. */
	if ((istatus & CGEM_INTR_RX_OVERRUN) != 0) {
		/* Clear status bit. */
		FUNC3(sc, CGEM_RX_STAT, CGEM_RX_STAT_OVERRUN);
		sc->rxoverruns++;
	}

	/* Receiver ran out of bufs. */
	if ((istatus & CGEM_INTR_RX_USED_READ) != 0) {
		FUNC3(sc, CGEM_NET_CTRL, sc->net_ctl_shadow |
		    CGEM_NET_CTRL_FLUSH_DPRAM_PKT);
		FUNC5(sc);
		sc->rxnobufs++;
	}

	/* Restart transmitter if needed. */
	if (!FUNC10(ifp))
		FUNC7(ifp);

	FUNC1(sc);
}