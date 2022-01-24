#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct regnode {int dummy; } ;
struct gpioregulator_reg_sc {TYPE_2__* def; } ;
struct TYPE_4__ {int npins; int nstates; TYPE_1__* states; int /*<<< orphan*/ * pins; } ;
struct TYPE_3__ {int mask; int val; } ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (int /*<<< orphan*/ ,int*) ; 
 struct gpioregulator_reg_sc* FUNC1 (struct regnode*) ; 

__attribute__((used)) static int
FUNC2(struct regnode *regnode, int *uvolt)
{
	struct gpioregulator_reg_sc *sc;
	uint32_t mask;
	int error, n;
	bool active;

	sc = FUNC1(regnode);
	mask = 0;

	for (n = 0; n < sc->def->npins; n++) {
		error = FUNC0(sc->def->pins[n], &active);
		if (error != 0)
			return (error);
		mask |= (active << n);
	}

	for (n = 0; n < sc->def->nstates; n++) {
		if (sc->def->states[n].mask == mask) {
			*uvolt = sc->def->states[n].val;
			return (0);
		}
	}

	return (EIO);
}