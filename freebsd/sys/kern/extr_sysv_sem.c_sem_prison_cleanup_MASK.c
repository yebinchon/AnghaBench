#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct prison {int dummy; } ;
struct TYPE_8__ {int mode; } ;
struct TYPE_7__ {TYPE_3__ sem_perm; } ;
struct TYPE_10__ {TYPE_1__* cred; TYPE_2__ u; } ;
struct TYPE_9__ {int semmni; } ;
struct TYPE_6__ {struct prison* cr_prison; } ;

/* Variables and functions */
 int SEM_ALLOC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sem_mtx ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 TYPE_5__* sema ; 
 int /*<<< orphan*/ * sema_mtx ; 
 TYPE_4__ seminfo ; 

__attribute__((used)) static void
FUNC3(struct prison *pr)
{
	int i;

	/* Remove any sems that belong to this jail. */
	FUNC0(&sem_mtx);
	for (i = 0; i < seminfo.semmni; i++) {
		if ((sema[i].u.sem_perm.mode & SEM_ALLOC) &&
		    sema[i].cred != NULL && sema[i].cred->cr_prison == pr) {
			FUNC0(&sema_mtx[i]);
			FUNC2(i, NULL);
			FUNC1(&sema_mtx[i]);
		}
	}
	FUNC1(&sem_mtx);
}