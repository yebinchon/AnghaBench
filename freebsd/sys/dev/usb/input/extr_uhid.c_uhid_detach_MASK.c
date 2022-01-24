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
struct uhid_softc {int sc_flags; int /*<<< orphan*/  sc_mtx; scalar_t__ sc_repdesc_ptr; int /*<<< orphan*/  sc_xfer; int /*<<< orphan*/  sc_fifo; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_USBDEV ; 
 int UHID_FLAG_STATIC_DESC ; 
 int /*<<< orphan*/  UHID_N_TRANSFER ; 
 struct uhid_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct uhid_softc *sc = FUNC0(dev);

	FUNC3(&sc->sc_fifo);

	FUNC4(sc->sc_xfer, UHID_N_TRANSFER);

	if (sc->sc_repdesc_ptr) {
		if (!(sc->sc_flags & UHID_FLAG_STATIC_DESC)) {
			FUNC1(sc->sc_repdesc_ptr, M_USBDEV);
		}
	}
	FUNC2(&sc->sc_mtx);

	return (0);
}