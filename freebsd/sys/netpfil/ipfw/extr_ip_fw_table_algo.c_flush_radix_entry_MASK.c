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
struct radix_node_head {int /*<<< orphan*/  rh; scalar_t__ (* rnh_deladdr ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
struct radix_node {int /*<<< orphan*/  rn_mask; int /*<<< orphan*/  rn_key; } ;
struct radix_addr_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_IPFW_TBL ; 
 int /*<<< orphan*/  FUNC0 (struct radix_addr_entry*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(struct radix_node *rn, void *arg)
{
	struct radix_node_head * const rnh = arg;
	struct radix_addr_entry *ent;

	ent = (struct radix_addr_entry *)
	    rnh->rnh_deladdr(rn->rn_key, rn->rn_mask, &rnh->rh);
	if (ent != NULL)
		FUNC0(ent, M_IPFW_TBL);
	return (0);
}