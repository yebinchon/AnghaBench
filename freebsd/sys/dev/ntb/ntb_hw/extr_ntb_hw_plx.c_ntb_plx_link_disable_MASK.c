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
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 struct ntb_plx_softc* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct ntb_plx_softc *sc = FUNC3(dev);
	uint32_t reg, val;

	/* Link disable for Link Interface would be suicidal. */
	if (sc->link)
		return (0);

	reg = FUNC0(sc);
	val = FUNC1(sc->conf_res, reg);
	val |= (1 << (sc->port & 7));
	FUNC2(sc->conf_res, reg, val);
	return (0);
}