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
struct phynode {scalar_t__ ref_cnt; int /*<<< orphan*/  consumers_list; } ;
typedef  TYPE_1__* phy_t ;
struct TYPE_5__ {scalar_t__ enable_cnt; struct phynode* phynode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  M_PHY ; 
 int /*<<< orphan*/  FUNC1 (struct phynode*) ; 
 int /*<<< orphan*/  FUNC2 (struct phynode*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC7 (struct phynode*) ; 

void
FUNC8(phy_t phy)
{
	struct phynode *phynode;

	phynode = phy->phynode;
	FUNC0(phynode->ref_cnt > 0,
	   ("Attempt to access unreferenced phy.\n"));

	FUNC3();
	while (phy->enable_cnt > 0) {
		FUNC7(phynode);
		phy->enable_cnt--;
	}
	FUNC2(phynode);
	FUNC5(&phynode->consumers_list, phy, link);
	phynode->ref_cnt--;
	FUNC1(phynode);
	FUNC4();

	FUNC6(phy, M_PHY);
}