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
typedef  int /*<<< orphan*/  uint32_t ;
struct syr827_reg_sc {void* volt_reg; void* suspend_reg; int /*<<< orphan*/  param; int /*<<< orphan*/  xref; int /*<<< orphan*/  base_dev; struct regnode* regnode; } ;
struct regnode_init_def {int /*<<< orphan*/  ofw_node; scalar_t__ id; } ;
struct regnode {int dummy; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  initdef ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* VSEL0 ; 
 void* VSEL1 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct regnode_init_def*,int /*<<< orphan*/ ,int) ; 
 struct regnode* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct regnode_init_def*) ; 
 struct syr827_reg_sc* FUNC5 (struct regnode*) ; 
 int /*<<< orphan*/  FUNC6 (struct regnode*) ; 
 int /*<<< orphan*/  FUNC7 (struct regnode*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct regnode_init_def*) ; 
 int /*<<< orphan*/  syr827_regnode_class ; 

__attribute__((used)) static struct syr827_reg_sc *
FUNC9(device_t dev, phandle_t node)
{
	struct syr827_reg_sc *reg_sc;
	struct regnode_init_def initdef;
	struct regnode *regnode;
	int suspend_reg;

	FUNC3(&initdef, 0, sizeof(initdef));
	FUNC8(dev, node, &initdef);
	initdef.id = 0;
	initdef.ofw_node = node;
	regnode = FUNC4(dev, &syr827_regnode_class, &initdef);
	if (regnode == NULL) {
		FUNC2(dev, "cannot create regulator\n");
		return (NULL);
	}

	reg_sc = FUNC5(regnode);
	reg_sc->regnode = regnode;
	reg_sc->base_dev = dev;
	reg_sc->xref = FUNC1(node);
	reg_sc->param = FUNC6(regnode);

	if (FUNC0(node, "fcs,suspend-voltage-selector", &suspend_reg,
	    sizeof(uint32_t)) <= 0)
		suspend_reg = 0;

	switch (suspend_reg) {
	case 0:
		reg_sc->suspend_reg = VSEL0;
		reg_sc->volt_reg = VSEL1;
		break;
	case 1:
		reg_sc->suspend_reg = VSEL1;
		reg_sc->volt_reg = VSEL0;
		break;
	}

	FUNC7(regnode);

	return (reg_sc);
}