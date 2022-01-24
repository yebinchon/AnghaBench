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
struct sfxge_softc {int /*<<< orphan*/  task_reset; int /*<<< orphan*/  dev; int /*<<< orphan*/ * enp; } ;
typedef  int /*<<< orphan*/  efx_nic_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sfxge_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sfxge_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct sfxge_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct sfxge_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct sfxge_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct sfxge_softc*) ; 
 int /*<<< orphan*/  FUNC12 (struct sfxge_softc*) ; 
 int /*<<< orphan*/  FUNC13 (struct sfxge_softc*) ; 
 int /*<<< orphan*/  FUNC14 (struct sfxge_softc*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_thread ; 

__attribute__((used)) static void
FUNC16(struct sfxge_softc *sc)
{
	efx_nic_t *enp;

	/* Clean up transmit state. */
	FUNC14(sc);

	/* Clean up receive state. */
	FUNC13(sc);

	/* Clean up port state. */
	FUNC12(sc);

	/* Clean up event processing state. */
	FUNC9(sc);

	/* Clean up interrupts. */
	FUNC10(sc);

	/* Tear down common code subsystems. */
	FUNC2(sc->enp);
	FUNC5(sc->enp);
	FUNC4(sc->enp);
	FUNC3(sc->enp);

	/* Tear down MCDI. */
	FUNC11(sc);

	/* Destroy common code context. */
	enp = sc->enp;
	sc->enp = NULL;
	FUNC1(enp);

	/* Free DMA memory. */
	FUNC8(sc);

	/* Free mapped BARs. */
	FUNC7(sc);

	(void) FUNC6(sc->dev);

	FUNC15(taskqueue_thread, &sc->task_reset);

	/* Destroy the softc lock. */
	FUNC0(sc);
}