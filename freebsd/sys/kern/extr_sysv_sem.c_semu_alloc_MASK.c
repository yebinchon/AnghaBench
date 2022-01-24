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
struct thread {int /*<<< orphan*/  td_proc; } ;
struct sem_undo {int /*<<< orphan*/  un_proc; scalar_t__ un_cnt; } ;

/* Variables and functions */
 struct sem_undo* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sem_undo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sem_undo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  semu_free_list ; 
 int /*<<< orphan*/  semu_list ; 
 int /*<<< orphan*/  un_next ; 

__attribute__((used)) static struct sem_undo *
FUNC4(struct thread *td)
{
	struct sem_undo *suptr;

	FUNC3(MA_OWNED);
	if ((suptr = FUNC0(&semu_free_list)) == NULL)
		return (NULL);
	FUNC2(suptr, un_next);
	FUNC1(&semu_list, suptr, un_next);
	suptr->un_cnt = 0;
	suptr->un_proc = td->td_proc;
	return (suptr);
}