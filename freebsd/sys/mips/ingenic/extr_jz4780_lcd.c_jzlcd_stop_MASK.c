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
struct jzlcd_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  LCDCTRL ; 
 int LCDCTRL_DIS ; 
 int LCDCTRL_ENA ; 
 int /*<<< orphan*/  LCDSTATE ; 
 int LCDSTATE_LDD ; 
 int FUNC1 (struct jzlcd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct jzlcd_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct jzlcd_softc *sc)
{
	uint32_t ctrl;

	ctrl = FUNC1(sc, LCDCTRL);
	if ((ctrl & LCDCTRL_ENA) != 0) {
		/* Disable the controller and wait for it to stop */
		ctrl |= LCDCTRL_DIS;
		FUNC2(sc, LCDCTRL, ctrl);
		while ((FUNC1(sc, LCDSTATE) & LCDSTATE_LDD) == 0)
			FUNC0(100);
	}
	/* Clear all status except for disable */
	FUNC2(sc, LCDSTATE, FUNC1(sc, LCDSTATE) & ~LCDSTATE_LDD);
}