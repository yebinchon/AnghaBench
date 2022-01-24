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
struct ufoma_softc {int /*<<< orphan*/  sc_cv; scalar_t__ sc_modetable; int /*<<< orphan*/  sc_bulk_xfer; int /*<<< orphan*/  sc_ctrl_xfer; int /*<<< orphan*/  sc_ucom; int /*<<< orphan*/  sc_super_ucom; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_USBDEV ; 
 int /*<<< orphan*/  UFOMA_BULK_ENDPT_MAX ; 
 int /*<<< orphan*/  UFOMA_CTRL_ENDPT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct ufoma_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ufoma_softc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct ufoma_softc *sc = FUNC2(dev);

	FUNC4(&sc->sc_super_ucom, &sc->sc_ucom);
	FUNC6(sc->sc_ctrl_xfer, UFOMA_CTRL_ENDPT_MAX);
	FUNC6(sc->sc_bulk_xfer, UFOMA_BULK_ENDPT_MAX);

	if (sc->sc_modetable) {
		FUNC3(sc->sc_modetable, M_USBDEV);
	}
	FUNC0(&sc->sc_cv);

	FUNC1(dev);

	FUNC5(sc);

	return (0);
}