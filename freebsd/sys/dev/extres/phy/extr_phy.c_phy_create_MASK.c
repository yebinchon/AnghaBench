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
struct phynode {int /*<<< orphan*/  consumers_list; int /*<<< orphan*/  ref_cnt; } ;
struct phy {scalar_t__ enable_cnt; struct phynode* phynode; int /*<<< orphan*/  cdev; } ;
typedef  struct phy* phy_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_PHY ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (struct phynode*) ; 
 int /*<<< orphan*/  FUNC1 (struct phynode*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 struct phy* FUNC4 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static phy_t
FUNC5(struct phynode *phynode, device_t cdev)
{
	struct phy *phy;

	FUNC2();

	phy =  FUNC4(sizeof(struct phy), M_PHY, M_WAITOK | M_ZERO);
	phy->cdev = cdev;
	phy->phynode = phynode;
	phy->enable_cnt = 0;

	FUNC1(phynode);
	phynode->ref_cnt++;
	FUNC3(&phynode->consumers_list, phy, link);
	FUNC0(phynode);

	return (phy);
}