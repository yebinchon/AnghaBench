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
struct rt2860_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rt2860_softc*) ; 
 int FUNC1 (struct rt2860_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2860_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2860_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RT2860_INT_STATUS ; 
 int RT2860_MAC_INT_0 ; 
 int RT2860_MAC_INT_2 ; 
 int RT2860_MAC_INT_3 ; 
 int RT2860_MAC_INT_4 ; 
 int RT2860_RX_DONE_INT ; 
 int RT2860_TX_DONE_INT0 ; 
 int RT2860_TX_DONE_INT1 ; 
 int RT2860_TX_DONE_INT2 ; 
 int RT2860_TX_DONE_INT3 ; 
 int RT2860_TX_DONE_INT4 ; 
 int RT2860_TX_DONE_INT5 ; 
 int RT2860_TX_RX_COHERENT ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2860_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct rt2860_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct rt2860_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct rt2860_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct rt2860_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct rt2860_softc*,int) ; 

void
FUNC11(void *arg)
{
	struct rt2860_softc *sc = arg;
	uint32_t r;

	FUNC0(sc);

	r = FUNC1(sc, RT2860_INT_STATUS);
	if (FUNC4(r == 0xffffffff)) {
		FUNC2(sc);
		return;	/* device likely went away */
	}
	if (r == 0) {
		FUNC2(sc);
		return;	/* not for us */
	}

	/* acknowledge interrupts */
	FUNC3(sc, RT2860_INT_STATUS, r);

	if (r & RT2860_TX_RX_COHERENT)
		FUNC7(sc);

	if (r & RT2860_MAC_INT_2)	/* TX status */
		FUNC5(sc);

	if (r & RT2860_TX_DONE_INT5)
		FUNC10(sc, 5);

	if (r & RT2860_RX_DONE_INT)
		FUNC8(sc);

	if (r & RT2860_TX_DONE_INT4)
		FUNC10(sc, 4);

	if (r & RT2860_TX_DONE_INT3)
		FUNC10(sc, 3);

	if (r & RT2860_TX_DONE_INT2)
		FUNC10(sc, 2);

	if (r & RT2860_TX_DONE_INT1)
		FUNC10(sc, 1);

	if (r & RT2860_TX_DONE_INT0)
		FUNC10(sc, 0);

	if (r & RT2860_MAC_INT_0)	/* TBTT */
		FUNC9(sc);

	if (r & RT2860_MAC_INT_3)	/* Auto wakeup */
		/* TBD wakeup */;

	if (r & RT2860_MAC_INT_4)	/* GP timer */
		FUNC6(sc);

	FUNC2(sc);
}