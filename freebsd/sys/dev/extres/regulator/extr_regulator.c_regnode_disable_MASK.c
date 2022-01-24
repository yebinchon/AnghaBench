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
struct TYPE_2__ {int /*<<< orphan*/  always_on; } ;
struct regnode {int enable_cnt; int flags; struct regnode* parent; TYPE_1__ std_param; } ;

/* Variables and functions */
 int FUNC0 (struct regnode*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct regnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct regnode*) ; 
 int REGULATOR_FLAGS_NOT_DISABLE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct regnode*) ; 

int
FUNC6(struct regnode *regnode)
{
	int udelay;
	int rv;

	FUNC3();
	rv = 0;

	FUNC2(regnode);
	/* Disable regulator for each node in chain, starting from consumer. */
	if (regnode->enable_cnt == 1 &&
	    (regnode->flags & REGULATOR_FLAGS_NOT_DISABLE) == 0 &&
	    !regnode->std_param.always_on) {
		rv = FUNC0(regnode, false, &udelay);
		if (rv != 0) {
			FUNC1(regnode);
			return (rv);
		}
		FUNC4(udelay);
	}
	regnode->enable_cnt--;
	FUNC1(regnode);

	rv = FUNC5(regnode);
	if (rv != 0)
		return (rv);
	if (regnode->parent != NULL)
		rv = FUNC6(regnode->parent);
	return (rv);
}