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
struct ciss_softc {int /*<<< orphan*/  ciss_dev; int /*<<< orphan*/  ciss_notify_thread; } ;

/* Variables and functions */
 scalar_t__ ciss_notify_thread ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (void (*) (void*),struct ciss_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3(struct ciss_softc *sc)
{

    if (FUNC1((void(*)(void *))ciss_notify_thread, sc,
		       &sc->ciss_notify_thread, 0, 0, "ciss_notify%d",
		       FUNC0(sc->ciss_dev)))
	FUNC2("Could not create notify thread\n");
}