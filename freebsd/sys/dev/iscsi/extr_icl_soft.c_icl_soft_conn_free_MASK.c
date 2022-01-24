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
struct kobj {int dummy; } ;
struct icl_conn {scalar_t__ ic_outstanding_pdus; int /*<<< orphan*/  ic_receive_cv; int /*<<< orphan*/  ic_send_cv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  M_ICL_SOFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  icl_ncons ; 
 int /*<<< orphan*/  FUNC2 (struct kobj*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(struct icl_conn *ic)
{

#ifdef DIAGNOSTIC
	KASSERT(ic->ic_outstanding_pdus == 0,
	    ("destroying session with %d outstanding PDUs",
	     ic->ic_outstanding_pdus));
#endif
	FUNC1(&ic->ic_send_cv);
	FUNC1(&ic->ic_receive_cv);
	FUNC2((struct kobj *)ic, M_ICL_SOFT);
	FUNC3(&icl_ncons);
}