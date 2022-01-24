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
typedef  int uint32_t ;
struct vcpu_register_vcpu_info {int mfn; scalar_t__ offset; } ;
struct vcpu_info {int dummy; } ;
struct TYPE_2__ {struct vcpu_info* vcpu_info; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct vcpu_info*) ; 
 struct vcpu_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vcpu_info*,struct vcpu_info*) ; 
 TYPE_1__* HYPERVISOR_shared_info ; 
 int FUNC3 (int /*<<< orphan*/ ,int,struct vcpu_register_vcpu_info*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int PAGE_SHIFT ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  VCPUOP_register_vcpu_info ; 
 int XEN_HVM_CPUID_VCPU_ID_PRESENT ; 
 int /*<<< orphan*/  acpi_id ; 
 scalar_t__ cpuid_base ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int FUNC10 (int) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  vcpu_id ; 
 int /*<<< orphan*/  vcpu_local_info ; 
 int FUNC12 (struct vcpu_info*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 scalar_t__ xen_evtchn_needs_ack ; 
 int /*<<< orphan*/  FUNC14 () ; 

__attribute__((used)) static void
FUNC15(void)
{
	struct vcpu_register_vcpu_info info;
	struct vcpu_info *vcpu_info;
	uint32_t regs[4];
	int cpu, rc;

	if (!FUNC13())
		return;

	if (FUNC0(vcpu_info) != NULL) {
		/*
		 * vcpu_info is already set.  We're resuming
		 * from a failed migration and our pre-suspend
		 * configuration is still valid.
		 */
		return;
	}

	/*
	 * Set vCPU ID. If available fetch the ID from CPUID, if not just use
	 * the ACPI ID.
	 */
	FUNC5(cpuid_base != 0, ("Invalid base Xen CPUID leaf"));
	FUNC8(cpuid_base + 4, 0, regs);
	FUNC5((regs[0] & XEN_HVM_CPUID_VCPU_ID_PRESENT) ||
	    !FUNC14(),
	    ("Xen PV domain without vcpu_id in cpuid"));
	FUNC7(vcpu_id, (regs[0] & XEN_HVM_CPUID_VCPU_ID_PRESENT) ?
	    regs[1] : FUNC6(acpi_id));

	if (xen_evtchn_needs_ack && !FUNC4()) {
		/*
		 * Setup the per-vpcu event channel upcall vector. This is only
		 * required when using the new HVMOP_set_evtchn_upcall_vector
		 * hypercall, which allows using a different vector for each
		 * vCPU. Note that FreeBSD uses the same vector for all vCPUs
		 * because it's not dynamically allocated.
		 */
		rc = FUNC10(FUNC6(vcpu_id));
		if (rc != 0)
			FUNC9("Event channel upcall vector setup failed: %d",
			    rc);
	}

	/*
	 * Set the vCPU info.
	 *
	 * NB: the vCPU info for vCPUs < 32 can be fetched from the shared info
	 * page, but in order to make sure the mapping code is correct always
	 * attempt to map the vCPU info at a custom place.
	 */
	vcpu_info = FUNC1(vcpu_local_info);
	cpu = FUNC6(vcpu_id);
	info.mfn = FUNC12(vcpu_info) >> PAGE_SHIFT;
	info.offset = FUNC12(vcpu_info) - FUNC11(FUNC12(vcpu_info));

	rc = FUNC3(VCPUOP_register_vcpu_info, cpu, &info);
	if (rc != 0)
		FUNC2(vcpu_info, &HYPERVISOR_shared_info->vcpu_info[cpu]);
	else
		FUNC2(vcpu_info, vcpu_info);
}