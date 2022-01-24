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
struct uvisor_softc {int /*<<< orphan*/  sc_xfer; int /*<<< orphan*/  sc_ucom; int /*<<< orphan*/  sc_super_ucom; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct uvisor_softc*) ; 
 int /*<<< orphan*/  UVISOR_N_TRANSFER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct uvisor_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct uvisor_softc*) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct uvisor_softc *sc = FUNC2(dev);

	FUNC0("sc=%p\n", sc);

	FUNC3(&sc->sc_super_ucom, &sc->sc_ucom);
	FUNC4(sc->sc_xfer, UVISOR_N_TRANSFER);

	FUNC1(dev);

	FUNC5(sc);

	return (0);
}