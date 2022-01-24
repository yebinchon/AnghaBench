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
struct adapter {int /*<<< orphan*/  flags; int /*<<< orphan*/ ** tq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adapter*) ; 
 int /*<<< orphan*/  FULL_INIT_DONE ; 
 int FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4(struct adapter *sc)
{
	int i;

	FUNC0(sc);

	FUNC2(sc);

	for (i = 0; i < FUNC1(sc->tq) && sc->tq[i]; i++) {
		FUNC3(sc->tq[i]);
		sc->tq[i] = NULL;
	}

	sc->flags &= ~FULL_INIT_DONE;

	return (0);
}