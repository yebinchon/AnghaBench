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
struct run_softc {int /*<<< orphan*/  ratectl_task; int /*<<< orphan*/  sc_ic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1(void *arg)
{
	struct run_softc *sc = arg;

	/* do it in a process context, so it can go sleep */
	FUNC0(&sc->sc_ic, &sc->ratectl_task);
	/* next timeout will be rescheduled in the callback task */
}