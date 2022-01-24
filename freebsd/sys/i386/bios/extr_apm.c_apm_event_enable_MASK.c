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
struct apm_softc {scalar_t__ initialized; int active; int /*<<< orphan*/  event_thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  apm_event_thread ; 
 struct apm_softc apm_softc ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct apm_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3(void)
{
	struct apm_softc *sc = &apm_softc;

	FUNC0("called apm_event_enable()\n");

	if (sc == NULL || sc->initialized == 0)
		return;

	/* Start the thread */
	sc->active = 1;
	if (FUNC1(apm_event_thread, sc, &sc->event_thread, 0, 0,
	    "apm worker"))
		FUNC2("Cannot create apm worker thread");

	return;
}