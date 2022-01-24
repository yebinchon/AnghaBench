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
struct unionfs_node_status {scalar_t__ uns_lower_opencnt; scalar_t__ uns_upper_opencnt; } ;
struct unionfs_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct unionfs_node_status*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  FUNC3 (struct unionfs_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct unionfs_node_status*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uns_list ; 

void
FUNC5(struct unionfs_node *unp,
			   struct unionfs_node_status *unsp)
{
	FUNC1(NULL != unsp, ("null pointer"));
	FUNC0(FUNC3(unp), "unionfs_get_node_status");

	if (0 < unsp->uns_lower_opencnt || 0 < unsp->uns_upper_opencnt)
		return;

	FUNC2(unsp, uns_list);
	FUNC4(unsp, M_TEMP);
}