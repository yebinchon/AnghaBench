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
struct vmbus_softc {int /*<<< orphan*/  (* vmbus_event_proc ) (struct vmbus_softc*,int) ;} ;
struct vmbus_message {scalar_t__ msg_type; int msg_flags; } ;
struct trapframe {int dummy; } ;

/* Variables and functions */
 int FILTER_HANDLED ; 
 scalar_t__ HYPERV_MSGTYPE_NONE ; 
 scalar_t__ HYPERV_MSGTYPE_TIMER_EXPIRED ; 
 int /*<<< orphan*/  MSR_HV_EOM ; 
 int VMBUS_MSGFLAG_PENDING ; 
 struct vmbus_message* FUNC0 (struct vmbus_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct vmbus_softc*,int /*<<< orphan*/ ,int) ; 
 int VMBUS_SINT_MESSAGE ; 
 int VMBUS_SINT_TIMER ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  message ; 
 int /*<<< orphan*/  message_task ; 
 int /*<<< orphan*/  message_tq ; 
 int /*<<< orphan*/  FUNC4 (struct vmbus_softc*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct vmbus_message*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct trapframe*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline int
FUNC8(struct vmbus_softc *sc, struct trapframe *frame, int cpu)
{
	volatile struct vmbus_message *msg;
	struct vmbus_message *msg_base;

	msg_base = FUNC0(sc, message, cpu);

	/*
	 * Check event timer.
	 *
	 * TODO: move this to independent IDT vector.
	 */
	msg = msg_base + VMBUS_SINT_TIMER;
	if (msg->msg_type == HYPERV_MSGTYPE_TIMER_EXPIRED) {
		msg->msg_type = HYPERV_MSGTYPE_NONE;

		FUNC6(frame);

		/*
		 * Make sure the write to msg_type (i.e. set to
		 * HYPERV_MSGTYPE_NONE) happens before we read the
		 * msg_flags and EOMing. Otherwise, the EOMing will
		 * not deliver any more messages since there is no
		 * empty slot
		 *
		 * NOTE:
		 * mb() is used here, since atomic_thread_fence_seq_cst()
		 * will become compiler fence on UP kernel.
		 */
		FUNC3();
		if (msg->msg_flags & VMBUS_MSGFLAG_PENDING) {
			/*
			 * This will cause message queue rescan to possibly
			 * deliver another msg from the hypervisor
			 */
			FUNC7(MSR_HV_EOM, 0);
		}
	}

	/*
	 * Check events.  Hot path for network and storage I/O data; high rate.
	 *
	 * NOTE:
	 * As recommended by the Windows guest fellows, we check events before
	 * checking messages.
	 */
	sc->vmbus_event_proc(sc, cpu);

	/*
	 * Check messages.  Mainly management stuffs; ultra low rate.
	 */
	msg = msg_base + VMBUS_SINT_MESSAGE;
	if (FUNC2(msg->msg_type != HYPERV_MSGTYPE_NONE)) {
		FUNC5(FUNC0(sc, message_tq, cpu),
		    FUNC1(sc, message_task, cpu));
	}

	return (FILTER_HANDLED);
}