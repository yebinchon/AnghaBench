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
struct sem_undo {scalar_t__ un_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct sem_undo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sem_undo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  semu_free_list ; 
 int /*<<< orphan*/  un_next ; 

__attribute__((used)) static int
FUNC3(struct sem_undo *suptr)
{

	FUNC2(MA_OWNED);

	if (suptr->un_cnt != 0)
		return (0);
	FUNC1(suptr, un_next);
	FUNC0(&semu_free_list, suptr, un_next);
	return (1);
}