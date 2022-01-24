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
struct regnode {int dummy; } ;
struct gpioregulator_reg_sc {TYPE_1__* def; } ;
struct TYPE_2__ {int enable_pin_valid; int npins; int /*<<< orphan*/ * pins; int /*<<< orphan*/  enable_pin; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO_PIN_OUTPUT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct gpioregulator_reg_sc* FUNC1 (struct regnode*) ; 

__attribute__((used)) static int
FUNC2(struct regnode *regnode)
{
	struct gpioregulator_reg_sc *sc;
	int error, n;

	sc = FUNC1(regnode);

	if (sc->def->enable_pin_valid == 1) {
		error = FUNC0(sc->def->enable_pin, GPIO_PIN_OUTPUT);
		if (error != 0)
			return (error);
	}

	for (n = 0; n < sc->def->npins; n++) {
		error = FUNC0(sc->def->pins[n], GPIO_PIN_OUTPUT);
		if (error != 0)
			return (error);
	}

	return (0);
}