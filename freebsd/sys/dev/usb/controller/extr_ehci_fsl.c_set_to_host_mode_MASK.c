#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  sc_io_hdl; int /*<<< orphan*/  sc_io_tag; } ;
typedef  TYPE_1__ ehci_softc_t ;

/* Variables and functions */
 int HOST_MODE ; 
 int /*<<< orphan*/  USBMODE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(ehci_softc_t *sc)
{
	int tmp;

	tmp = FUNC0(sc->sc_io_tag, sc->sc_io_hdl, USBMODE);
	FUNC1(sc->sc_io_tag, sc->sc_io_hdl, USBMODE, tmp | HOST_MODE);
}