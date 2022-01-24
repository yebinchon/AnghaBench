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
struct uark_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_super_ucom; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uark_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct uark_softc *sc)
{
	if (FUNC2(&sc->sc_super_ucom)) {
		FUNC1(&sc->sc_mtx);
		FUNC0(sc);
	}
}