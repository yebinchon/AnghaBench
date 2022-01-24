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
struct lockf_entry_list {int dummy; } ;
struct lockf_entry {scalar_t__ lf_end; } ;
struct lockf {int dummy; } ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct lockf*,struct lockf_entry*,int /*<<< orphan*/ ,struct lockf_entry_list*) ; 

__attribute__((used)) static void
FUNC2(struct lockf *state, struct lockf_entry *lock, off_t new_end,
	struct lockf_entry_list *granted)
{

	FUNC0(new_end <= lock->lf_end, ("can't increase lock"));
	lock->lf_end = new_end;
	FUNC1(state, lock, FALSE, granted);
}