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
struct adapter {int /*<<< orphan*/ * names; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int CHELSIO_T4 ; 
 int FUNC0 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * devnames ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(struct adapter *sc)
{
	int id;

	id = FUNC0(sc);
	if (id >= CHELSIO_T4 && id - CHELSIO_T4 < FUNC2(devnames))
		sc->names = &devnames[id - CHELSIO_T4];
	else {
		FUNC1(sc->dev, "chip id %d is not supported.\n", id);
		sc->names = NULL;
	}
}