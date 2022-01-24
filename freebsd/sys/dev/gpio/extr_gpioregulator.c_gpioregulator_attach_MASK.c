#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct regnode {int dummy; } ;
struct TYPE_6__ {int id; int /*<<< orphan*/  ofw_node; } ;
struct TYPE_4__ {TYPE_3__ reg_init_def; } ;
struct gpioregulator_softc {TYPE_1__ init_def; TYPE_2__* reg_sc; void* dev; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  void* device_t ;
struct TYPE_5__ {TYPE_1__* def; int /*<<< orphan*/  param; void* base_dev; struct regnode* regnode; } ;

/* Variables and functions */
 int ENXIO ; 
 struct gpioregulator_softc* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*,char*) ; 
 int FUNC2 (struct gpioregulator_softc*) ; 
 int /*<<< orphan*/  gpioregulator_regnode_class ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 struct regnode* FUNC4 (void*,int /*<<< orphan*/ *,TYPE_3__*) ; 
 TYPE_2__* FUNC5 (struct regnode*) ; 
 int /*<<< orphan*/  FUNC6 (struct regnode*) ; 
 int /*<<< orphan*/  FUNC7 (struct regnode*) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct gpioregulator_softc *sc;
	struct regnode *regnode;
	phandle_t node;
	int error;

	sc = FUNC0(dev);
	sc->dev = dev;
	node = FUNC3(dev);

	error = FUNC2(sc);
	if (error != 0) {
		FUNC1(dev, "cannot parse parameters\n");
		return (ENXIO);
	}
	sc->init_def.reg_init_def.id = 1;
	sc->init_def.reg_init_def.ofw_node = node;

	regnode = FUNC4(dev, &gpioregulator_regnode_class,
	    &sc->init_def.reg_init_def);
	if (regnode == NULL) {
		FUNC1(dev, "cannot create regulator\n");
		return (ENXIO);
	}

	sc->reg_sc = FUNC5(regnode);
	sc->reg_sc->regnode = regnode;
	sc->reg_sc->base_dev = dev;
	sc->reg_sc->param = FUNC6(regnode);
	sc->reg_sc->def = &sc->init_def;

	FUNC7(regnode);

	return (0);
}