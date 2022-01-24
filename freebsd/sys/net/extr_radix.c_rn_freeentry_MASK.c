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
struct radix_node {int dummy; } ;
struct radix_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct radix_node*) ; 
 scalar_t__ FUNC1 (struct radix_node*,int /*<<< orphan*/ *,struct radix_head* const) ; 

__attribute__((used)) static int
FUNC2(struct radix_node *rn, void *arg)
{
	struct radix_head * const rnh = arg;
	struct radix_node *x;

	x = (struct radix_node *)FUNC1(rn + 2, NULL, rnh);
	if (x != NULL)
		FUNC0(x);
	return (0);
}