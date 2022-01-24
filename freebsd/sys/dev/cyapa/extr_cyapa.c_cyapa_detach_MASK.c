#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  si_note; } ;
struct cyapa_softc {int detaching; int /*<<< orphan*/  mutex; TYPE_1__ selinfo; int /*<<< orphan*/  devnode; scalar_t__ poll_thread_running; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCATCH ; 
 int /*<<< orphan*/  FUNC0 (struct cyapa_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct cyapa_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct cyapa_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct cyapa_softc *sc;

	sc = FUNC3(dev);

	/* Cleanup poller thread */
	FUNC0(sc);
	while (sc->poll_thread_running) {
		sc->detaching = 1;
		FUNC7(&sc->detaching, &sc->mutex, PCATCH, "cyapadet", hz);
	}
	FUNC1(sc);

	FUNC2(sc->devnode);

	FUNC4(&sc->selinfo.si_note, 0);
	FUNC8(&sc->selinfo);
	FUNC5(&sc->selinfo.si_note);

	FUNC6(&sc->mutex);

	return (0);
}