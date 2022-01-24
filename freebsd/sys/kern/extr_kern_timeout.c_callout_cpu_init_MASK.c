#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct callout_list {int dummy; } ;
struct callout_cpu {int cc_inited; int /*<<< orphan*/  cc_callfree; struct callout* cc_callout; int /*<<< orphan*/  cc_ktr_event_name; int /*<<< orphan*/  cc_firstevent; int /*<<< orphan*/  cc_expireq; int /*<<< orphan*/ * cc_callwheel; int /*<<< orphan*/  cc_lock; } ;
struct callout {int /*<<< orphan*/  c_iflags; } ;
struct TYPE_4__ {int /*<<< orphan*/  sle; } ;
struct TYPE_3__ {int /*<<< orphan*/  pc_domain; } ;

/* Variables and functions */
 int /*<<< orphan*/  CALLOUT_LOCAL_ALLOC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int MTX_RECURSE ; 
 int MTX_SPIN ; 
 int /*<<< orphan*/  M_CALLOUT ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  SBT_MAX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct callout*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_2__ c_links ; 
 int /*<<< orphan*/  FUNC5 (struct callout*,int /*<<< orphan*/ ) ; 
 int callwheelsize ; 
 int /*<<< orphan*/  FUNC6 (struct callout_cpu*,int) ; 
 int /*<<< orphan*/ * FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 
 int ncallout ; 
 TYPE_1__* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,char*,int) ; 

__attribute__((used)) static void
FUNC11(struct callout_cpu *cc, int cpu)
{
	struct callout *c;
	int i;

	FUNC8(&cc->cc_lock, "callout", NULL, MTX_SPIN | MTX_RECURSE);
	FUNC2(&cc->cc_callfree);
	cc->cc_inited = 1;
	cc->cc_callwheel = FUNC7(sizeof(struct callout_list) *
	    callwheelsize, M_CALLOUT,
	    FUNC0(FUNC9(cpu)->pc_domain), M_WAITOK);
	for (i = 0; i < callwheelsize; i++)
		FUNC1(&cc->cc_callwheel[i]);
	FUNC4(&cc->cc_expireq);
	cc->cc_firstevent = SBT_MAX;
	for (i = 0; i < 2; i++)
		FUNC6(cc, i);
	FUNC10(cc->cc_ktr_event_name, sizeof(cc->cc_ktr_event_name),
	    "callwheel cpu %d", cpu);
	if (cc->cc_callout == NULL)	/* Only BSP handles timeout(9) */
		return;
	for (i = 0; i < ncallout; i++) {
		c = &cc->cc_callout[i];
		FUNC5(c, 0);
		c->c_iflags = CALLOUT_LOCAL_ALLOC;
		FUNC3(&cc->cc_callfree, c, c_links.sle);
	}
}