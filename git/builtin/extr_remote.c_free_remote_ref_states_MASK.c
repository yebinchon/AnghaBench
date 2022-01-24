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
struct ref_states {int /*<<< orphan*/  push; int /*<<< orphan*/  heads; int /*<<< orphan*/  tracked; int /*<<< orphan*/  stale; int /*<<< orphan*/  new_refs; } ;

/* Variables and functions */
 int /*<<< orphan*/  clear_push_info ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ref_states *states)
{
	FUNC0(&states->new_refs, 0);
	FUNC0(&states->stale, 1);
	FUNC0(&states->tracked, 0);
	FUNC0(&states->heads, 0);
	FUNC1(&states->push, clear_push_info);
}