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
struct in6_multi_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct in6_multi_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct in6_multi_head*) ; 
 int /*<<< orphan*/  free_gtask ; 
 int /*<<< orphan*/  in6_multi ; 
 int /*<<< orphan*/  in6_multi_free_mtx ; 
 int /*<<< orphan*/  in6m_free_list ; 
 int /*<<< orphan*/  in6m_nrele ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(struct in6_multi_head *inmh)
{
	if (FUNC2(inmh))
		return;
	FUNC3(&in6_multi_free_mtx);
	FUNC1(&in6m_free_list, inmh, in6_multi, in6m_nrele);
	FUNC4(&in6_multi_free_mtx);
	FUNC0(&free_gtask);
}