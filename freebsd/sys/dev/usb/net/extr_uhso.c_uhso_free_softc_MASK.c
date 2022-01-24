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
struct uhso_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_ucom; int /*<<< orphan*/  sc_tty; int /*<<< orphan*/  sc_super_ucom; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_USBDEV ; 
 int /*<<< orphan*/  FUNC0 (struct uhso_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct uhso_softc *sc)
{
	if (FUNC3(&sc->sc_super_ucom)) {
		FUNC1(sc->sc_tty, M_USBDEV);
		FUNC1(sc->sc_ucom, M_USBDEV);
		FUNC2(&sc->sc_mtx);
		FUNC0(sc);
	}
}