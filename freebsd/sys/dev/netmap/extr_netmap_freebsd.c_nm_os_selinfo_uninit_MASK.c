#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  si_note; } ;
struct TYPE_5__ {int /*<<< orphan*/  m; TYPE_1__ si; int /*<<< orphan*/ * ntfytq; int /*<<< orphan*/  ntfytask; } ;
typedef  TYPE_2__ NM_SELINFO_T ;

/* Variables and functions */
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(NM_SELINFO_T *si)
{
	if (si->ntfytq == NULL) {
		return;	/* si was not initialized */
	}
	FUNC3(si->ntfytq, &si->ntfytask);
	FUNC4(si->ntfytq);
	si->ntfytq = NULL;
	FUNC0(&si->si.si_note, curthread, /*islocked=*/0);
	FUNC1(&si->si.si_note);
	/* now we don't need the mutex anymore */
	FUNC2(&si->m);
}