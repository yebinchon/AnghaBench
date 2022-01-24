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
struct replay_cache {size_t rc_maxsize; int /*<<< orphan*/  rc_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct replay_cache*) ; 

void
FUNC3(struct replay_cache *rc, size_t newmaxsize)
{

	FUNC0(&rc->rc_lock);
	rc->rc_maxsize = newmaxsize;
	FUNC2(rc);
	FUNC1(&rc->rc_lock);
}