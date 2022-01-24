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
struct sysctl_oid {int oid_kind; } ;

/* Variables and functions */
 int CTLFLAG_DORMANT ; 
 int CTLTYPE ; 
 int CTLTYPE_NODE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 

void
FUNC2(struct sysctl_oid *oidp)
{

	FUNC1();
	if ((oidp->oid_kind & CTLTYPE) == CTLTYPE_NODE) {
		FUNC0((oidp->oid_kind & CTLFLAG_DORMANT) == 0,
		    ("sysctl node is marked as dormant"));
		return;
	}
	FUNC0((oidp->oid_kind & CTLFLAG_DORMANT) != 0,
	    ("enabling already enabled sysctl oid"));
	oidp->oid_kind &= ~CTLFLAG_DORMANT;
}