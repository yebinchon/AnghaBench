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
struct regnode {scalar_t__ enable_cnt; struct regnode* parent; } ;

/* Variables and functions */
 int FUNC0 (struct regnode*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct regnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct regnode*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct regnode*) ; 

int
FUNC6(struct regnode *regnode)
{
	int udelay;
	int rv;

	FUNC3();

	/* Enable regulator for each node in chain, starting from source. */
	rv = FUNC5(regnode);
	if (rv != 0)
		return (rv);
	if (regnode->parent != NULL) {
		rv = FUNC6(regnode->parent);
		if (rv != 0)
			return (rv);
	}

	/* Handle this node. */
	FUNC2(regnode);
	if (regnode->enable_cnt == 0) {
		rv = FUNC0(regnode, true, &udelay);
		if (rv != 0) {
			FUNC1(regnode);
			return (rv);
		}
		FUNC4(udelay);
	}
	regnode->enable_cnt++;
	FUNC1(regnode);
	return (0);
}