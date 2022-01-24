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
struct bufdomain {int /*<<< orphan*/  bd_run_lock; int /*<<< orphan*/ * bd_subq; int /*<<< orphan*/  bd_dirtyq; int /*<<< orphan*/ * bd_cleanq; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  QUEUE_CLEAN ; 
 int /*<<< orphan*/  QUEUE_DIRTY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*) ; 
 int mp_maxid ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct bufdomain *bd)
{
	int i;

	bd->bd_cleanq = &bd->bd_subq[mp_maxid + 1];
	FUNC0(bd->bd_cleanq, QUEUE_CLEAN, mp_maxid + 1, "bufq clean lock");
	FUNC0(&bd->bd_dirtyq, QUEUE_DIRTY, -1, "bufq dirty lock");
	for (i = 0; i <= mp_maxid; i++)
		FUNC0(&bd->bd_subq[i], QUEUE_CLEAN, i,
		    "bufq clean subqueue lock");
	FUNC1(&bd->bd_run_lock, "bufspace daemon run lock", NULL, MTX_DEF);
}