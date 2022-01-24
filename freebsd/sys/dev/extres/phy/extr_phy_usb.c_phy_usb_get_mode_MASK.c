#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct phynode {scalar_t__ ref_cnt; } ;
typedef  TYPE_1__* phy_t ;
struct TYPE_3__ {struct phynode* phynode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (struct phynode*,int*) ; 

int FUNC4(phy_t phy, int *usb_mode)
{
	int rv;
	struct phynode *phynode;

	phynode = phy->phynode;
	FUNC0(phynode->ref_cnt > 0,
	   ("Attempt to access unreferenced phy.\n"));

	FUNC1();
	rv = FUNC3(phynode, usb_mode);
	FUNC2();
	return (rv);
}