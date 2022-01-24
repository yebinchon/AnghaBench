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
typedef  scalar_t__ u_int ;
struct xen_hvm_param {int value; int /*<<< orphan*/  index; int /*<<< orphan*/  domid; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  DOMID_SELF ; 
 int /*<<< orphan*/  HVMOP_set_param ; 
 int FUNC0 (int) ; 
 int FUNC1 (scalar_t__,scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HVM_PARAM_CALLBACK_IRQ ; 
 int FUNC3 (int /*<<< orphan*/ ,struct xen_hvm_param*) ; 
 int /*<<< orphan*/  IDT_EVTCHN ; 
 int /*<<< orphan*/  XENFEAT_hvm_callback_vector ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int xen_evtchn_needs_ack ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int xen_vector_callback_enabled ; 

void
FUNC11(device_t dev)
{
	struct xen_hvm_param xhp;
	int irq;

	if (xen_vector_callback_enabled)
		return;

	xhp.domid = DOMID_SELF;
	xhp.index = HVM_PARAM_CALLBACK_IRQ;
	if (FUNC10(XENFEAT_hvm_callback_vector) != 0) {
		int error;

		error = FUNC9(0);
		if (error == 0) {
			xen_evtchn_needs_ack = true;
			/* Trick toolstack to think we are enlightened */
			xhp.value = 1;
		} else
			xhp.value = FUNC2(IDT_EVTCHN);
		error = FUNC3(HVMOP_set_param, &xhp);
		if (error == 0) {
			xen_vector_callback_enabled = 1;
			return;
		} else if (xen_evtchn_needs_ack)
			FUNC4("Unable to setup fake HVM param: %d", error);

		FUNC8("Xen HVM callback vector registration failed (%d). "
		    "Falling back to emulated device interrupt\n", error);
	}
	xen_vector_callback_enabled = 0;
	if (dev == NULL) {
		/*
		 * Called from early boot or resume.
		 * xenpci will invoke us again later.
		 */
		return;
	}

	irq = FUNC6(dev);
	if (irq < 16) {
		xhp.value = FUNC0(irq);
	} else {
		u_int slot;
		u_int pin;

		slot = FUNC7(dev);
		pin = FUNC5(dev) - 1;
		xhp.value = FUNC1(slot, pin);
	}

	if (FUNC3(HVMOP_set_param, &xhp) != 0)
		FUNC4("Can't set evtchn callback");
}