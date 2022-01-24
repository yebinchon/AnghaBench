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
struct jme_softc {int jme_flags; } ;

/* Variables and functions */
 int FUNC0 (struct jme_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct jme_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int GHC_RESET ; 
 int GHC_TX_MAC_CLK_DIS ; 
 int GPREG1_RX_MAC_CLK_DIS ; 
 int JME_FLAG_RXCLK ; 
 int JME_FLAG_TXCLK ; 
 int /*<<< orphan*/  JME_GHC ; 
 int /*<<< orphan*/  JME_GPREG1 ; 
 int /*<<< orphan*/  FUNC3 (struct jme_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct jme_softc*) ; 

__attribute__((used)) static void
FUNC5(struct jme_softc *sc)
{
	uint32_t ghc, gpreg;

	/* Stop receiver, transmitter. */
	FUNC3(sc);
	FUNC4(sc);

	/* Reset controller. */
	FUNC1(sc, JME_GHC, GHC_RESET);
	FUNC0(sc, JME_GHC);
	FUNC2(10);
	/*
	 * Workaround Rx FIFO overruns seen under certain conditions.
	 * Explicitly synchorize TX/RX clock.  TX/RX clock should be
	 * enabled only after enabling TX/RX MACs.
	 */
	if ((sc->jme_flags & (JME_FLAG_TXCLK | JME_FLAG_RXCLK)) != 0) {
		/* Disable TX clock. */
		FUNC1(sc, JME_GHC, GHC_RESET | GHC_TX_MAC_CLK_DIS);
		/* Disable RX clock. */
		gpreg = FUNC0(sc, JME_GPREG1);
		FUNC1(sc, JME_GPREG1, gpreg | GPREG1_RX_MAC_CLK_DIS);
		gpreg = FUNC0(sc, JME_GPREG1);
		/* De-assert RESET but still disable TX clock. */
		FUNC1(sc, JME_GHC, GHC_TX_MAC_CLK_DIS);
		ghc = FUNC0(sc, JME_GHC);

		/* Enable TX clock. */
		FUNC1(sc, JME_GHC, ghc & ~GHC_TX_MAC_CLK_DIS);
		/* Enable RX clock. */
		FUNC1(sc, JME_GPREG1, gpreg & ~GPREG1_RX_MAC_CLK_DIS);
		FUNC0(sc, JME_GPREG1);

		/* Disable TX/RX clock again. */
		FUNC1(sc, JME_GHC, GHC_TX_MAC_CLK_DIS);
		FUNC1(sc, JME_GPREG1, gpreg | GPREG1_RX_MAC_CLK_DIS);
	} else
		FUNC1(sc, JME_GHC, 0);
	FUNC0(sc, JME_GHC);
	FUNC2(10);
}