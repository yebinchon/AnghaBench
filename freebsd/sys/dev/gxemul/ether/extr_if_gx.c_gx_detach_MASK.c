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
struct gx_softc {int /*<<< orphan*/  sc_intr; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct gx_softc* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(device_t dev)
{
	struct gx_softc *sc;

	sc = FUNC1(dev);

	FUNC0(dev, SYS_RES_IRQ, 0, sc->sc_intr);
	/* XXX Incomplete.  */

	return (0);
}