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
struct regulator {int /*<<< orphan*/  max_uvolt; int /*<<< orphan*/  min_uvolt; scalar_t__ enable_cnt; struct regnode* regnode; int /*<<< orphan*/  cdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  max_uvolt; int /*<<< orphan*/  min_uvolt; } ;
struct regnode {TYPE_1__ std_param; int /*<<< orphan*/  consumers_list; int /*<<< orphan*/  ref_cnt; } ;
typedef  struct regulator* regulator_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_REGULATOR ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (struct regnode*) ; 
 int /*<<< orphan*/  FUNC1 (struct regnode*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct regulator*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 struct regulator* FUNC4 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static regulator_t
FUNC5(struct regnode *regnode, device_t cdev)
{
	struct regulator *reg;

	FUNC2();

	reg =  FUNC4(sizeof(struct regulator), M_REGULATOR,
	    M_WAITOK | M_ZERO);
	reg->cdev = cdev;
	reg->regnode = regnode;
	reg->enable_cnt = 0;

	FUNC1(regnode);
	regnode->ref_cnt++;
	FUNC3(&regnode->consumers_list, reg, link);
	reg ->min_uvolt = regnode->std_param.min_uvolt;
	reg ->max_uvolt = regnode->std_param.max_uvolt;
	FUNC0(regnode);

	return (reg);
}