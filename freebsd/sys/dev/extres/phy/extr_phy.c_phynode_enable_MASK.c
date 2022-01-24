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
struct phynode {scalar_t__ enable_cnt; } ;

/* Variables and functions */
 int FUNC0 (struct phynode*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct phynode*) ; 
 int /*<<< orphan*/  FUNC2 (struct phynode*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

int
FUNC4(struct phynode *phynode)
{
	int rv;

	FUNC3();

	FUNC2(phynode);
	if (phynode->enable_cnt == 0) {
		rv = FUNC0(phynode, true);
		if (rv != 0) {
			FUNC1(phynode);
			return (rv);
		}
	}
	phynode->enable_cnt++;
	FUNC1(phynode);
	return (0);
}