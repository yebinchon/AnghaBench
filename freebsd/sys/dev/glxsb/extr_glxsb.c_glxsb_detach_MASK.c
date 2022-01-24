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
struct glxsb_softc {int /*<<< orphan*/  sc_task_mtx; int /*<<< orphan*/  sc_tq; int /*<<< orphan*/  sc_sr; int /*<<< orphan*/  sc_rid; int /*<<< orphan*/  sc_dma; int /*<<< orphan*/  sc_cryptotask; int /*<<< orphan*/  sc_rngco; int /*<<< orphan*/  sc_cid; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct glxsb_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct glxsb_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct glxsb_softc *sc = FUNC4(dev);

	FUNC3(sc->sc_cid);

	FUNC2(&sc->sc_rngco);
	FUNC7(sc->sc_tq, &sc->sc_cryptotask);
	FUNC0(dev);
	FUNC5(sc, &sc->sc_dma);
	FUNC1(dev, SYS_RES_MEMORY, sc->sc_rid, sc->sc_sr);
	FUNC8(sc->sc_tq);
	FUNC6(&sc->sc_task_mtx);
	return (0);
}