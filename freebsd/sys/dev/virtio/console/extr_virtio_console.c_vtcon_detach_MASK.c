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
struct vtcon_softc {int vtcon_flags; int /*<<< orphan*/  vtcon_ctrl_tx_mtx; int /*<<< orphan*/  vtcon_mtx; int /*<<< orphan*/  vtcon_ctrl_task; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int VTCON_FLAG_DETACHED ; 
 int VTCON_FLAG_MULTIPORT ; 
 int /*<<< orphan*/  FUNC0 (struct vtcon_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct vtcon_softc*) ; 
 struct vtcon_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_thread ; 
 int /*<<< orphan*/  FUNC6 (struct vtcon_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct vtcon_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct vtcon_softc*) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct vtcon_softc *sc;

	sc = FUNC2(dev);

	FUNC0(sc);
	sc->vtcon_flags |= VTCON_FLAG_DETACHED;
	if (FUNC3(dev))
		FUNC8(sc);
	FUNC1(sc);

	if (sc->vtcon_flags & VTCON_FLAG_MULTIPORT) {
		FUNC5(taskqueue_thread, &sc->vtcon_ctrl_task);
		FUNC6(sc);
	}

	FUNC7(sc);
	FUNC4(&sc->vtcon_mtx);
	FUNC4(&sc->vtcon_ctrl_tx_mtx);

	return (0);
}