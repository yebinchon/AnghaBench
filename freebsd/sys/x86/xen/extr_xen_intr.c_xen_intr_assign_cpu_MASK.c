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
typedef  scalar_t__ u_int ;
struct xenisrc {scalar_t__ xi_type; scalar_t__ xi_cpu; int /*<<< orphan*/  xi_port; } ;
struct intsrc {int dummy; } ;
struct evtchn_bind_vcpu {scalar_t__ vcpu; int /*<<< orphan*/  port; } ;
struct TYPE_2__ {scalar_t__ pc_vcpu_id; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  EVTCHNOP_bind_vcpu ; 
 scalar_t__ EVTCHN_TYPE_IPI ; 
 scalar_t__ EVTCHN_TYPE_VIRQ ; 
 int FUNC0 (int /*<<< orphan*/ ,struct evtchn_bind_vcpu*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  xen_intr_isrc_lock ; 
 scalar_t__ xen_vector_callback_enabled ; 

__attribute__((used)) static int
FUNC10(struct intsrc *base_isrc, u_int apic_id)
{
#ifdef SMP
	struct evtchn_bind_vcpu bind_vcpu;
	struct xenisrc *isrc;
	u_int to_cpu, vcpu_id;
	int error, masked;

	if (xen_vector_callback_enabled == 0)
		return (EOPNOTSUPP);

	to_cpu = apic_cpuid(apic_id);
	vcpu_id = pcpu_find(to_cpu)->pc_vcpu_id;

	mtx_lock(&xen_intr_isrc_lock);
	isrc = (struct xenisrc *)base_isrc;
	if (!is_valid_evtchn(isrc->xi_port)) {
		mtx_unlock(&xen_intr_isrc_lock);
		return (EINVAL);
	}

	/*
	 * Mask the event channel while binding it to prevent interrupt
	 * delivery with an inconsistent state in isrc->xi_cpu.
	 */
	masked = evtchn_test_and_set_mask(isrc->xi_port);
	if ((isrc->xi_type == EVTCHN_TYPE_VIRQ) ||
		(isrc->xi_type == EVTCHN_TYPE_IPI)) {
		/*
		 * Virtual IRQs are associated with a cpu by
		 * the Hypervisor at evtchn_bind_virq time, so
		 * all we need to do is update the per-CPU masks.
		 */
		evtchn_cpu_mask_port(isrc->xi_cpu, isrc->xi_port);
		isrc->xi_cpu = to_cpu;
		evtchn_cpu_unmask_port(isrc->xi_cpu, isrc->xi_port);
		goto out;
	}

	bind_vcpu.port = isrc->xi_port;
	bind_vcpu.vcpu = vcpu_id;

	error = HYPERVISOR_event_channel_op(EVTCHNOP_bind_vcpu, &bind_vcpu);
	if (isrc->xi_cpu != to_cpu) {
		if (error == 0) {
			/* Commit to new binding by removing the old one. */
			evtchn_cpu_mask_port(isrc->xi_cpu, isrc->xi_port);
			isrc->xi_cpu = to_cpu;
			evtchn_cpu_unmask_port(isrc->xi_cpu, isrc->xi_port);
		}
	}

out:
	if (masked == 0)
		evtchn_unmask_port(isrc->xi_port);
	mtx_unlock(&xen_intr_isrc_lock);
	return (0);
#else
	return (EOPNOTSUPP);
#endif
}