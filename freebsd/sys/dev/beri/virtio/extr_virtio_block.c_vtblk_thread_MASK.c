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
struct beri_vtblk_softc {int /*<<< orphan*/  sc_mtx; } ;

/* Variables and functions */
 int PCATCH ; 
 int PZERO ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct beri_vtblk_softc*,int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct beri_vtblk_softc*) ; 

__attribute__((used)) static void
FUNC5(void *arg)
{
	struct beri_vtblk_softc *sc;
	int err;

	sc = arg;

	FUNC2(&sc->sc_mtx);
	for (;;) {
		err = FUNC1(sc, &sc->sc_mtx, PCATCH | PZERO, "prd", hz);
		FUNC4(sc);
	}
	FUNC3(&sc->sc_mtx);

	FUNC0();
}