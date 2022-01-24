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
struct ntb_plx_softc {scalar_t__ int_res; int /*<<< orphan*/  int_rid; int /*<<< orphan*/  int_tag; int /*<<< orphan*/  link; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ntb_plx_softc*,int,int) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 struct ntb_plx_softc* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(device_t dev)
{
	struct ntb_plx_softc *sc = FUNC3(dev);

	if (!sc->link)	/* Link Interface has no Link Error registers. */
		FUNC0(sc, 0xfe4, 0xf);	/* Mask link interrupts. */

	if (sc->int_res) {
		FUNC2(dev, sc->int_res, sc->int_tag);
		FUNC1(dev, SYS_RES_IRQ, sc->int_rid,
		    sc->int_res);
	}
}