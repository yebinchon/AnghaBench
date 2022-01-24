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
struct tmpfs_node {int dummy; } ;
struct tmpfs_mount {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tmpfs_mount*) ; 
 int /*<<< orphan*/  FUNC1 (struct tmpfs_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct tmpfs_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct tmpfs_mount*) ; 
 int /*<<< orphan*/  FUNC4 (struct tmpfs_mount*,struct tmpfs_node*,int) ; 

void
FUNC5(struct tmpfs_mount *tmp, struct tmpfs_node *node)
{

	FUNC0(tmp);
	FUNC1(node);
	if (!FUNC4(tmp, node, false)) {
		FUNC2(node);
		FUNC3(tmp);
	}
}