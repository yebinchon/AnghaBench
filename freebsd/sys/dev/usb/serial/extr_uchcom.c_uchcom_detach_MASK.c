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
struct uchcom_softc {int /*<<< orphan*/  sc_xfer; int /*<<< orphan*/  sc_ucom; int /*<<< orphan*/  sc_super_ucom; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  UCHCOM_N_TRANSFER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct uchcom_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uchcom_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct uchcom_softc *sc = FUNC2(dev);

	FUNC0(11, "\n");

	FUNC4(&sc->sc_super_ucom, &sc->sc_ucom);
	FUNC5(sc->sc_xfer, UCHCOM_N_TRANSFER);

	FUNC1(dev);

	FUNC3(sc);

	return (0);
}