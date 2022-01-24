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
struct rtwn_softc {int /*<<< orphan*/  rcr; } ;

/* Variables and functions */
 int /*<<< orphan*/  R92C_RCR_CBSSID_BCN ; 
 int /*<<< orphan*/  FUNC0 (struct rtwn_softc*) ; 

void
FUNC1(struct rtwn_softc *sc, int enable)
{

	if (enable)
		sc->rcr &= ~R92C_RCR_CBSSID_BCN;
	else
		sc->rcr |= R92C_RCR_CBSSID_BCN;
	FUNC0(sc);
}