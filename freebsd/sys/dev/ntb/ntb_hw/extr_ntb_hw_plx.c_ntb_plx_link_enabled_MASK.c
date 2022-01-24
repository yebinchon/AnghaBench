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
struct ntb_plx_softc {int port; int /*<<< orphan*/  conf_res; scalar_t__ link; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (struct ntb_plx_softc*) ; 
 int TRUE ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct ntb_plx_softc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC3(device_t dev)
{
	struct ntb_plx_softc *sc = FUNC2(dev);
	uint32_t reg, val;

	/* The fact that we see the Link Interface means link is enabled. */
	if (sc->link)
		return (TRUE);

	reg = FUNC0(sc);
	val = FUNC1(sc->conf_res, reg);
	return ((val & (1 << (sc->port & 7))) == 0);
}