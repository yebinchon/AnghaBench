#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  evtchn_pending_sel; scalar_t__ evtchn_upcall_pending; } ;
typedef  TYPE_1__ vcpu_info_t ;
typedef  unsigned long u_long ;
typedef  scalar_t__ u_int ;
struct xenisrc {scalar_t__ xi_cpu; int /*<<< orphan*/  xi_intsrc; } ;
struct xen_intr_pcpu_data {scalar_t__ last_processed_l1i; scalar_t__ last_processed_l2i; int /*<<< orphan*/ * evtchn_intrcnt; } ;
struct trapframe {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/ * evtchn_pending; } ;
typedef  TYPE_2__ shared_info_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 struct xen_intr_pcpu_data* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* HYPERVISOR_shared_info ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 scalar_t__ LONG_BIT ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cpuid ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct trapframe*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vcpu_info ; 
 int /*<<< orphan*/  FUNC12 () ; 
 scalar_t__ xen_evtchn_needs_ack ; 
 scalar_t__ FUNC13 () ; 
 unsigned long FUNC14 (struct xen_intr_pcpu_data*,TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  xen_intr_pcpu ; 
 struct xenisrc** xen_intr_port_to_isrc ; 
 int /*<<< orphan*/  xen_vector_callback_enabled ; 

void
FUNC15(struct trapframe *trap_frame)
{
	u_int l1i, l2i, port, cpu;
	u_long masked_l1, masked_l2;
	struct xenisrc *isrc;
	shared_info_t *s;
	vcpu_info_t *v;
	struct xen_intr_pcpu_data *pc;
	u_long l1, l2;

	/*
	 * Disable preemption in order to always check and fire events
	 * on the right vCPU
	 */
	FUNC6();

	cpu = FUNC3(cpuid);
	pc  = FUNC1(xen_intr_pcpu);
	s   = HYPERVISOR_shared_info;
	v   = FUNC0(vcpu_info);

	if (FUNC13() && !xen_vector_callback_enabled) {
		FUNC2((cpu == 0), ("Fired PCI event callback on wrong CPU"));
	}

	v->evtchn_upcall_pending = 0;

#if 0
#ifndef CONFIG_X86 /* No need for a barrier -- XCHG is a barrier on x86. */
	/* Clear master flag /before/ clearing selector flag. */
	wmb();
#endif
#endif

	l1 = FUNC5(&v->evtchn_pending_sel);

	l1i = pc->last_processed_l1i;
	l2i = pc->last_processed_l2i;
	(*pc->evtchn_intrcnt)++;

	while (l1 != 0) {

		l1i = (l1i + 1) % LONG_BIT;
		masked_l1 = l1 & ((~0UL) << l1i);

		if (masked_l1 == 0) {
			/*
			 * if we masked out all events, wrap around
			 * to the beginning.
			 */
			l1i = LONG_BIT - 1;
			l2i = LONG_BIT - 1;
			continue;
		}
		l1i = FUNC8(masked_l1) - 1;

		do {
			l2 = FUNC14(pc, s, l1i);

			l2i = (l2i + 1) % LONG_BIT;
			masked_l2 = l2 & ((~0UL) << l2i);

			if (masked_l2 == 0) {
				/* if we masked out all events, move on */
				l2i = LONG_BIT - 1;
				break;
			}
			l2i = FUNC8(masked_l2) - 1;

			/* process port */
			port = (l1i * LONG_BIT) + l2i;
			FUNC11(port, &s->evtchn_pending[0]);

			isrc = xen_intr_port_to_isrc[port];
			if (FUNC4(isrc == NULL))
				continue;

			/* Make sure we are firing on the right vCPU */
			FUNC2((isrc->xi_cpu == FUNC3(cpuid)),
				("Received unexpected event on vCPU#%d, event bound to vCPU#%d",
				FUNC3(cpuid), isrc->xi_cpu));

			FUNC9(&isrc->xi_intsrc, trap_frame);

			/*
			 * If this is the final port processed,
			 * we'll pick up here+1 next time.
			 */
			pc->last_processed_l1i = l1i;
			pc->last_processed_l2i = l2i;

		} while (l2i != LONG_BIT - 1);

		l2 = FUNC14(pc, s, l1i);
		if (l2 == 0) {
			/*
			 * We handled all ports, so we can clear the
			 * selector bit.
			 */
			l1 &= ~(1UL << l1i);
		}
	}

	if (xen_evtchn_needs_ack)
		FUNC10();

	FUNC7();
}