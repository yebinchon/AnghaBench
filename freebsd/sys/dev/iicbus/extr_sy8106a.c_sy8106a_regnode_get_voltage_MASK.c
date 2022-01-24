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
typedef  int uint8_t ;
struct sy8106a_reg_sc {int /*<<< orphan*/  base_dev; } ;
struct regnode {int dummy; } ;

/* Variables and functions */
 int SEL_VOLTAGE_BASE ; 
 int SEL_VOLTAGE_MASK ; 
 int SEL_VOLTAGE_STEP ; 
 int /*<<< orphan*/  VOUT1_SEL ; 
 struct sy8106a_reg_sc* FUNC0 (struct regnode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static int
FUNC2(struct regnode *regnode, int *uvolt)
{
	struct sy8106a_reg_sc *sc;
	uint8_t val;

	sc = FUNC0(regnode);

	FUNC1(sc->base_dev, VOUT1_SEL, &val, 1);
	*uvolt = (val & SEL_VOLTAGE_MASK) * SEL_VOLTAGE_STEP +
	    SEL_VOLTAGE_BASE;

	return (0);
}