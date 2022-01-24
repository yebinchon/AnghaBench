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
typedef  int u_int ;
struct rc_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rc_softc*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CCR_HWRESET ; 
 int /*<<< orphan*/  CD180_GICR ; 
 int /*<<< orphan*/  CD180_GIVR ; 
 int /*<<< orphan*/  CD180_PILR1 ; 
 int /*<<< orphan*/  CD180_PILR2 ; 
 int /*<<< orphan*/  CD180_PILR3 ; 
 int /*<<< orphan*/  CD180_PPRH ; 
 int /*<<< orphan*/  CD180_PPRL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  RC_CTOUT ; 
 int /*<<< orphan*/  RC_DTREG ; 
 int RC_OSCFREQ ; 
 int RC_PILR_MODEM ; 
 int RC_PILR_RX ; 
 int RC_PILR_TX ; 
 int /*<<< orphan*/  FUNC2 (struct rc_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rc_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct rc_softc *sc, u_int chipid)
{
	FUNC0(sc, -1, CCR_HWRESET);            /* Hardware reset */
	FUNC1(20000);
	FUNC2(sc, -1);

	FUNC3(sc, RC_CTOUT, 0);             /* Clear timeout  */
	FUNC3(sc, CD180_GIVR,  chipid);
	FUNC3(sc, CD180_GICR,  0);

	/* Set Prescaler Registers (1 msec) */
	FUNC3(sc, CD180_PPRL, ((RC_OSCFREQ + 999) / 1000) & 0xFF);
	FUNC3(sc, CD180_PPRH, ((RC_OSCFREQ + 999) / 1000) >> 8);

	/* Initialize Priority Interrupt Level Registers */
	FUNC3(sc, CD180_PILR1, RC_PILR_MODEM);
	FUNC3(sc, CD180_PILR2, RC_PILR_TX);
	FUNC3(sc, CD180_PILR3, RC_PILR_RX);

	/* Reset DTR */
	FUNC3(sc, RC_DTREG, ~0);
}