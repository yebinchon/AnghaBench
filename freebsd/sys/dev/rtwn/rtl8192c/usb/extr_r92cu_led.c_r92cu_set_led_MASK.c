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
struct rtwn_softc {int ledlink; } ;

/* Variables and functions */
 int /*<<< orphan*/  R92C_LEDCFG0 ; 
 int R92C_LEDCFG0_DIS ; 
 int RTWN_LED_LINK ; 
 int FUNC0 (struct rtwn_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtwn_softc*,int /*<<< orphan*/ ,int) ; 

void
FUNC2(struct rtwn_softc *sc, int led, int on)
{
	uint8_t reg;

	if (led == RTWN_LED_LINK) {
		reg = FUNC0(sc, R92C_LEDCFG0) & 0x70;
		if (!on)
			reg |= R92C_LEDCFG0_DIS;
		FUNC1(sc, R92C_LEDCFG0, reg);
		sc->ledlink = on;	/* Save LED state. */
	}
}