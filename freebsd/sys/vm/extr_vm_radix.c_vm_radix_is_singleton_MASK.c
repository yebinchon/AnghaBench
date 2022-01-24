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
struct vm_radix_node {int dummy; } ;
struct vm_radix {int dummy; } ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 struct vm_radix_node* FUNC0 (struct vm_radix*) ; 
 int /*<<< orphan*/  FUNC1 (struct vm_radix_node*) ; 

boolean_t
FUNC2(struct vm_radix *rtree)
{
	struct vm_radix_node *rnode;

	rnode = FUNC0(rtree);
	if (rnode == NULL)
		return (FALSE);
	return (FUNC1(rnode));
}