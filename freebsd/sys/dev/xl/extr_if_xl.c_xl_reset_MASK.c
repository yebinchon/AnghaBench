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
struct xl_softc {int xl_flags; int /*<<< orphan*/  xl_dev; } ;

/* Variables and functions */
 int FUNC0 (struct xl_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xl_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int XL_CMD_RESET ; 
 int XL_CMD_RX_RESET ; 
 int XL_CMD_TX_RESET ; 
 int /*<<< orphan*/  XL_COMMAND ; 
 int XL_FLAG_INVERT_LED_PWR ; 
 int XL_FLAG_INVERT_MII_PWR ; 
 int XL_FLAG_USE_MMIO ; 
 int XL_FLAG_WEIRDRESET ; 
 int /*<<< orphan*/  FUNC3 (struct xl_softc*) ; 
 int XL_RESETOPT_DISADVFD ; 
 int XL_RESETOPT_INVERT_LED ; 
 int XL_RESETOPT_INVERT_MII ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  XL_STATUS ; 
 int XL_STAT_CMDBUSY ; 
 int XL_TIMEOUT ; 
 int /*<<< orphan*/  XL_W2_RESET_OPTIONS ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct xl_softc*) ; 

__attribute__((used)) static void
FUNC7(struct xl_softc *sc)
{
	int			i;

	FUNC3(sc);

	FUNC4(0);
	FUNC1(sc, XL_COMMAND, XL_CMD_RESET |
	    ((sc->xl_flags & XL_FLAG_WEIRDRESET) ?
	     XL_RESETOPT_DISADVFD:0));

	/*
	 * If we're using memory mapped register mode, pause briefly
	 * after issuing the reset command before trying to access any
	 * other registers. With my 3c575C CardBus card, failing to do
	 * this results in the system locking up while trying to poll
	 * the command busy bit in the status register.
	 */
	if (sc->xl_flags & XL_FLAG_USE_MMIO)
		FUNC2(100000);

	for (i = 0; i < XL_TIMEOUT; i++) {
		FUNC2(10);
		if (!(FUNC0(sc, XL_STATUS) & XL_STAT_CMDBUSY))
			break;
	}

	if (i == XL_TIMEOUT)
		FUNC5(sc->xl_dev, "reset didn't complete\n");

	/* Reset TX and RX. */
	/* Note: the RX reset takes an absurd amount of time
	 * on newer versions of the Tornado chips such as those
	 * on the 3c905CX and newer 3c908C cards. We wait an
	 * extra amount of time so that xl_wait() doesn't complain
	 * and annoy the users.
	 */
	FUNC1(sc, XL_COMMAND, XL_CMD_RX_RESET);
	FUNC2(100000);
	FUNC6(sc);
	FUNC1(sc, XL_COMMAND, XL_CMD_TX_RESET);
	FUNC6(sc);

	if (sc->xl_flags & XL_FLAG_INVERT_LED_PWR ||
	    sc->xl_flags & XL_FLAG_INVERT_MII_PWR) {
		FUNC4(2);
		FUNC1(sc, XL_W2_RESET_OPTIONS,
		    FUNC0(sc, XL_W2_RESET_OPTIONS) |
		    ((sc->xl_flags & XL_FLAG_INVERT_LED_PWR) ?
		    XL_RESETOPT_INVERT_LED : 0) |
		    ((sc->xl_flags & XL_FLAG_INVERT_MII_PWR) ?
		    XL_RESETOPT_INVERT_MII : 0));
	}

	/* Wait a little while for the chip to get its brains in order. */
	FUNC2(100000);
}