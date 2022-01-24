#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_int32_t ;
struct TYPE_2__ {int lvt_masked; } ;

/* Variables and functions */
 size_t APIC_LVT_PMC ; 
 size_t APIC_VER_MAXLVT ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  LAPIC_VERSION ; 
 size_t MAXLVTSHIFT ; 
 int /*<<< orphan*/ * lapic_map ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lapic_update_pmc ; 
 TYPE_1__* lvts ; 
 int mp_ncpus ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ smp_started ; 
 int /*<<< orphan*/  x2apic_mode ; 

__attribute__((used)) static void
FUNC3(void)
{
#ifdef HWPMC_HOOKS
	u_int32_t maxlvt;

	/* Fail if the local APIC is not present. */
	if (!x2apic_mode && lapic_map == NULL)
		return;

	/* Fail if the PMC LVT is not present. */
	maxlvt = (lapic_read32(LAPIC_VERSION) & APIC_VER_MAXLVT) >> MAXLVTSHIFT;
	if (maxlvt < APIC_LVT_PMC)
		return;

	lvts[APIC_LVT_PMC].lvt_masked = 1;

#ifdef SMP
	/* The APs should always be started when hwpmc is unloaded. */
	KASSERT(mp_ncpus == 1 || smp_started, ("hwpmc unloaded too early"));
#endif
	smp_rendezvous(NULL, lapic_update_pmc, NULL, NULL);
#endif
}