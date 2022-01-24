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
struct nlm_waiting_lock {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_NLM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct nlm_waiting_lock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nlm_waiting_lock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nlm_global_lock ; 
 int /*<<< orphan*/  nlm_waiting_locks ; 
 int /*<<< orphan*/  nw_link ; 

void
FUNC4(void *handle)
{
	struct nlm_waiting_lock *nw = handle;

	FUNC2(&nlm_global_lock);
	FUNC0(&nlm_waiting_locks, nw, nw_link);
	FUNC3(&nlm_global_lock);
	
	FUNC1(nw, M_NLM);
}