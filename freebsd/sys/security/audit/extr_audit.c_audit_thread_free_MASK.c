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
struct thread {int td_pflags; int /*<<< orphan*/ * td_ar; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int TDP_AUDITREC ; 

void
FUNC1(struct thread *td)
{

	FUNC0(td->td_ar == NULL, ("audit_thread_free: td_ar != NULL"));
	FUNC0((td->td_pflags & TDP_AUDITREC) == 0,
	    ("audit_thread_free: TDP_AUDITREC set"));
}