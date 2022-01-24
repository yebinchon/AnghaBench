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
struct regnode {struct regnode* parent; } ;

/* Variables and functions */
 int ENOENT ; 
 int FUNC0 (struct regnode*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct regnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct regnode*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (struct regnode*) ; 

int
FUNC5(struct regnode *regnode, int *uvolt)
{
	int rv;

	FUNC3();

	FUNC2(regnode);
	rv = FUNC0(regnode, uvolt);
	FUNC1(regnode);

	/* Pass call into parent, if regulator is in bypass mode. */
	if (rv == ENOENT) {
		rv = FUNC4(regnode);
		if (rv != 0)
			return (rv);
		if (regnode->parent != NULL)
			rv = FUNC5(regnode->parent, uvolt);

	}
	return (rv);
}