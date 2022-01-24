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
struct replay_cache {int /*<<< orphan*/  rc_lock; int /*<<< orphan*/  rc_all; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_RPC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct replay_cache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct replay_cache*,scalar_t__) ; 

void
FUNC5(struct replay_cache *rc)
{

	FUNC3(&rc->rc_lock);
	while (FUNC0(&rc->rc_all))
		FUNC4(rc, FUNC0(&rc->rc_all));
	FUNC2(&rc->rc_lock);
	FUNC1(rc, M_RPC);
}