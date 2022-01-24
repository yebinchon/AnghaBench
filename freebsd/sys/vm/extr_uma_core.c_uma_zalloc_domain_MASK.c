#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zone ;
typedef  TYPE_1__* uma_zone_t ;
struct TYPE_9__ {scalar_t__ td_critnest; } ;
struct TYPE_8__ {int /*<<< orphan*/  uz_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,TYPE_5__*,int /*<<< orphan*/ ,TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  KTR_UMA ; 
 int M_WAITOK ; 
 int /*<<< orphan*/  RANDOM_UMA ; 
 scalar_t__ FUNC2 () ; 
 int WARN_GIANTOK ; 
 int WARN_SLEEPOK ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 TYPE_5__* curthread ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**,int,int /*<<< orphan*/ ) ; 
 void* FUNC5 (TYPE_1__*,void*,int,int) ; 

void *
FUNC6(uma_zone_t zone, void *udata, int domain, int flags)
{

	/* Enable entropy collection for RANDOM_ENABLE_UMA kernel option */
	FUNC4(&zone, sizeof(zone), RANDOM_UMA);

	/* This is the fast path allocation */
	FUNC0(KTR_UMA,
	    "uma_zalloc_domain thread %x zone %s(%p) domain %d flags %d",
	    curthread, zone->uz_name, zone, domain, flags);

	if (flags & M_WAITOK) {
		FUNC3(WARN_GIANTOK | WARN_SLEEPOK, NULL,
		    "uma_zalloc_domain: zone \"%s\"", zone->uz_name);
	}
	FUNC1(curthread->td_critnest == 0 || FUNC2(),
	    ("uma_zalloc_domain: called with spinlock or critical section held"));

	return (FUNC5(zone, udata, domain, flags));
}