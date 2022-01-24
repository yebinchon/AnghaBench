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
typedef  int uint8_t ;
struct syr827_reg_sc {TYPE_1__* param; int /*<<< orphan*/  volt_reg; int /*<<< orphan*/  base_dev; } ;
struct regnode {int dummy; } ;
struct TYPE_2__ {int ramp_delay; } ;

/* Variables and functions */
 int VSEL_NSEL_MASK ; 
 int VSEL_VOLTAGE_BASE ; 
 int VSEL_VOLTAGE_STEP ; 
 int FUNC0 (int) ; 
 struct syr827_reg_sc* FUNC1 (struct regnode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(struct regnode *regnode, int min_uvolt,
    int max_uvolt, int *udelay)
{
	struct syr827_reg_sc *sc;
	int cur_uvolt;
	uint8_t val;

	sc = FUNC1(regnode);

	/* Get current voltage */
	FUNC2(sc->base_dev, sc->volt_reg, &val, 1);
	cur_uvolt = (val & VSEL_NSEL_MASK) * VSEL_VOLTAGE_STEP +
	    VSEL_VOLTAGE_BASE;

	/* Set new voltage */
	val &= ~VSEL_NSEL_MASK;
	val |= ((min_uvolt - VSEL_VOLTAGE_BASE) / VSEL_VOLTAGE_STEP);
	FUNC3(sc->base_dev, sc->volt_reg, val);

	/* Time to delay is based on the number of voltage steps */
	*udelay = sc->param->ramp_delay *
	    (FUNC0(cur_uvolt - min_uvolt) / VSEL_VOLTAGE_STEP);

	return (0);
}