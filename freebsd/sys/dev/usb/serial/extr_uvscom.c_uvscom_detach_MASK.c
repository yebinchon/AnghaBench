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
struct uvscom_softc {scalar_t__* sc_xfer; int /*<<< orphan*/  sc_ucom; int /*<<< orphan*/  sc_super_ucom; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct uvscom_softc*) ; 
 size_t UVSCOM_INTR_DT_RD ; 
 int /*<<< orphan*/  UVSCOM_N_TRANSFER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct uvscom_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct uvscom_softc*) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct uvscom_softc *sc = FUNC2(dev);

	FUNC0("sc=%p\n", sc);

	/* stop interrupt pipe */

	if (sc->sc_xfer[UVSCOM_INTR_DT_RD])
		FUNC4(sc->sc_xfer[UVSCOM_INTR_DT_RD]);

	FUNC3(&sc->sc_super_ucom, &sc->sc_ucom);
	FUNC5(sc->sc_xfer, UVSCOM_N_TRANSFER);

	FUNC1(dev);

	FUNC6(sc);

	return (0);
}