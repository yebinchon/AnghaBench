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
struct altera_sdcard_softc {int /*<<< orphan*/  as_task; int /*<<< orphan*/  as_taskqueue; int /*<<< orphan*/  as_unit; int /*<<< orphan*/  as_state; int /*<<< orphan*/ * as_currentbio; int /*<<< orphan*/  as_bioq; int /*<<< orphan*/ * as_disk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct altera_sdcard_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct altera_sdcard_softc*) ; 
 int /*<<< orphan*/  ALTERA_SDCARD_STATE_NOCARD ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  PI_DISK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (struct altera_sdcard_softc*,int),struct altera_sdcard_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct altera_sdcard_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  taskqueue_thread_enqueue ; 

void
FUNC7(struct altera_sdcard_softc *sc)
{

	FUNC1(sc);
	FUNC0(sc);
	sc->as_disk = NULL;
	FUNC4(&sc->as_bioq);
	sc->as_currentbio = NULL;
	sc->as_state = ALTERA_SDCARD_STATE_NOCARD;
	sc->as_taskqueue = FUNC5("altera_sdcardc taskq", M_WAITOK,
	    taskqueue_thread_enqueue, &sc->as_taskqueue);
	FUNC6(&sc->as_taskqueue, 1, PI_DISK,
	    "altera_sdcardc%d taskqueue", sc->as_unit);
	FUNC2(sc->as_taskqueue, &sc->as_task, 0,
	    altera_sdcard_task, sc);

	/*
	 * Kick off timer-driven processing with a manual poll so that we
	 * synchronously detect an already-inserted SD Card during the boot or
	 * other driver attach point.
	 */
	FUNC3(sc, 1);
}