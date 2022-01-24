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
struct radix_node_head {int /*<<< orphan*/  rh; int /*<<< orphan*/  (* rnh_walktree ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct radix_node_head*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct radix_node_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct radix_node_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct radix_node_head*) ; 
 int /*<<< orphan*/  FUNC3 (void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct radix_node_head*) ; 
 int /*<<< orphan*/  vfs_free_netcred ; 

__attribute__((used)) static void
FUNC5(struct radix_node_head **prnh)
{
	struct radix_node_head *rnh;

	rnh = *prnh;
	FUNC1(rnh);
	(*rnh->rnh_walktree)(&rnh->rh, vfs_free_netcred, rnh);
	FUNC2(rnh);
	FUNC0(rnh);
	FUNC3((void **)prnh);
	prnh = NULL;
}