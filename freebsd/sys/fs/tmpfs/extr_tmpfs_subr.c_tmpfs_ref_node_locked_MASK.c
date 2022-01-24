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
struct tmpfs_node {scalar_t__ tn_refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct tmpfs_node*) ; 
 scalar_t__ UINT_MAX ; 

void
FUNC2(struct tmpfs_node *node)
{

	FUNC1(node);
	FUNC0(node->tn_refcount > 0, ("node %p zero refcount", node));
	FUNC0(node->tn_refcount < UINT_MAX, ("node %p refcount %u", node,
	    node->tn_refcount));
	node->tn_refcount++;
}