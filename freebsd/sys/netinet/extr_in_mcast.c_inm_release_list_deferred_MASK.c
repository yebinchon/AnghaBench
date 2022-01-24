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
struct in_multi_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct in_multi_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct in_multi_head*) ; 
 int /*<<< orphan*/  free_gtask ; 
 int /*<<< orphan*/  in_multi ; 
 int /*<<< orphan*/  in_multi_free_mtx ; 
 int /*<<< orphan*/  inm_free_list ; 
 int /*<<< orphan*/  inm_nrele ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(struct in_multi_head *inmh)
{

	if (FUNC2(inmh))
		return;
	FUNC3(&in_multi_free_mtx);
	FUNC1(&inm_free_list, inmh, in_multi, inm_nrele);
	FUNC4(&in_multi_free_mtx);
	FUNC0(&free_gtask);
}