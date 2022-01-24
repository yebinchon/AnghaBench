#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct regnode {scalar_t__ ref_cnt; int /*<<< orphan*/  consumers_list; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__* regulator_t ;
struct TYPE_5__ {scalar_t__ enable_cnt; struct regnode* regnode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  M_REGULATOR ; 
 int /*<<< orphan*/  FUNC1 (struct regnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct regnode*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC7 (struct regnode*) ; 

int
FUNC8(regulator_t reg)
{
	struct regnode *regnode;

	regnode = reg->regnode;
	FUNC0(regnode->ref_cnt > 0,
	   ("Attempt to access unreferenced regulator: %s\n", regnode->name));
	FUNC3();
	while (reg->enable_cnt > 0) {
		FUNC7(regnode);
		reg->enable_cnt--;
	}
	FUNC2(regnode);
	FUNC5(&regnode->consumers_list, reg, link);
	regnode->ref_cnt--;
	FUNC1(regnode);
	FUNC4();

	FUNC6(reg, M_REGULATOR);
	return (0);
}