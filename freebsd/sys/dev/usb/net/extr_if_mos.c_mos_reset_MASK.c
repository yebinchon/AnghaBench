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
typedef  int uint8_t ;
struct mos_softc {int /*<<< orphan*/  sc_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  MOS_CTL ; 
 int MOS_CTL_ALLMULTI ; 
 int MOS_CTL_RX_ENB ; 
 int MOS_CTL_RX_PROMISC ; 
 int MOS_CTL_TX_ENB ; 
 int /*<<< orphan*/  MOS_FRAME_DROP_CNT ; 
 int hz ; 
 int FUNC0 (struct mos_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mos_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC3(struct mos_softc *sc)
{
	uint8_t ctl;

	ctl = FUNC0(sc, MOS_CTL);
	ctl &= ~(MOS_CTL_RX_PROMISC | MOS_CTL_ALLMULTI | MOS_CTL_TX_ENB |
	    MOS_CTL_RX_ENB);
	/* Disable RX, TX, promiscuous and allmulticast mode */
	FUNC1(sc, MOS_CTL, ctl);

	/* Reset frame drop counter register to zero */
	FUNC1(sc, MOS_FRAME_DROP_CNT, 0);

	/* Wait a little while for the chip to get its brains in order. */
	FUNC2(&sc->sc_mtx, hz / 128);
	return;
}