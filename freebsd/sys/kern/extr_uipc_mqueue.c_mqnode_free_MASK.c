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
struct mqfs_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  mqnode_zone ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mqfs_node*) ; 

__attribute__((used)) static __inline void
FUNC1(struct mqfs_node *node)
{
	FUNC0(mqnode_zone, node);
}