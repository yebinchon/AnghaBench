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
struct snapdata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct snapdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sn_link ; 
 int /*<<< orphan*/  snapfree ; 
 int /*<<< orphan*/  snapfree_lock ; 

__attribute__((used)) static void
FUNC3(struct snapdata *sn)
{
	FUNC1(&snapfree_lock);
	FUNC0(&snapfree, sn, sn_link);
	FUNC2(&snapfree_lock);
}