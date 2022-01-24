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
struct rl_q_entry {int rl_q_flags; scalar_t__ rl_q_start; scalar_t__ rl_q_end; } ;
struct rangelock {int dummy; } ;
struct mtx {int dummy; } ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int RL_LOCK_GRANTED ; 
 int /*<<< orphan*/  FUNC2 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC3 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC4 (struct rangelock*) ; 
 int /*<<< orphan*/  FUNC5 (struct rangelock*,void*,struct mtx*,int) ; 

void *
FUNC6(struct rangelock *lock, void *cookie, off_t start,
    off_t end, struct mtx *ilk)
{
	struct rl_q_entry *entry;

	FUNC1(lock != NULL && cookie != NULL && ilk != NULL);
	entry = cookie;
	FUNC0(entry->rl_q_flags & RL_LOCK_GRANTED,
	    ("Unlocking non-granted lock"));
	FUNC0(entry->rl_q_start == start, ("wrong start"));
	FUNC0(entry->rl_q_end >= end, ("wrong end"));

	FUNC2(ilk);
	if (entry->rl_q_end == end) {
		FUNC5(lock, cookie, ilk, true);
		return (NULL);
	}
	entry->rl_q_end = end;
	FUNC4(lock);
	FUNC3(ilk);
	return (cookie);
}