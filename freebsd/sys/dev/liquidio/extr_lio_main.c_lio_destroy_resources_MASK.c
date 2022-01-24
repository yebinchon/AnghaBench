#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  (* soft_reset ) (struct octeon_device*) ;int /*<<< orphan*/  (* disable_interrupt ) (struct octeon_device*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* disable_io_queues ) (struct octeon_device*) ;} ;
struct TYPE_5__ {int oq; int iq; } ;
struct octeon_device {int /*<<< orphan*/  device; TYPE_3__ fn_list; int /*<<< orphan*/ ** instr_queue; TYPE_2__ io_qmask; int /*<<< orphan*/ ** droq; int /*<<< orphan*/ * msix_res; int /*<<< orphan*/  aux_vector; int /*<<< orphan*/ * tag; TYPE_1__* ioq_vector; int /*<<< orphan*/  num_msix_irqs; int /*<<< orphan*/  msix_on; int /*<<< orphan*/  status; int /*<<< orphan*/  app_mode; } ;
struct TYPE_4__ {int /*<<< orphan*/ * msix_res; int /*<<< orphan*/  vector; int /*<<< orphan*/ * tag; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
#define  LIO_DEV_BEGIN_STATE 143 
#define  LIO_DEV_CONSOLE_INIT_DONE 142 
#define  LIO_DEV_CORE_OK 141 
#define  LIO_DEV_DISPATCH_INIT_DONE 140 
#define  LIO_DEV_DROQ_INIT_DONE 139 
#define  LIO_DEV_HOST_OK 138 
#define  LIO_DEV_INSTR_QUEUE_INIT_DONE 137 
#define  LIO_DEV_INTR_SET_DONE 136 
#define  LIO_DEV_IN_RESET 135 
#define  LIO_DEV_IO_QUEUES_DONE 134 
#define  LIO_DEV_MSIX_ALLOC_VECTOR_DONE 133 
#define  LIO_DEV_PCI_ENABLE_DONE 132 
#define  LIO_DEV_PCI_MAP_DONE 131 
#define  LIO_DEV_RESP_LIST_INIT_DONE 130 
#define  LIO_DEV_RUNNING 129 
#define  LIO_DEV_SC_BUFF_POOL_INIT_DONE 128 
 int /*<<< orphan*/  LIO_DRV_INVALID_APP ; 
 int FUNC1 (struct octeon_device*) ; 
 int FUNC2 (struct octeon_device*) ; 
 int LIO_MAX_POSSIBLE_INSTR_QUEUES ; 
 int LIO_MAX_POSSIBLE_OUTPUT_QUEUES ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  OCTEON_ALL_INTR ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct octeon_device*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct octeon_device*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct octeon_device*) ; 
 int FUNC13 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct octeon_device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct octeon_device*,char*) ; 
 int /*<<< orphan*/  FUNC16 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC21 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC22 (int) ; 
 int /*<<< orphan*/  FUNC23 (struct octeon_device*,int) ; 
 int /*<<< orphan*/  FUNC24 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC25 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC26 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC30 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (struct octeon_device*) ; 

__attribute__((used)) static void
FUNC32(struct octeon_device *oct)
{
	int i, refcount;

	switch (FUNC3(&oct->status)) {
	case LIO_DEV_RUNNING:
	case LIO_DEV_CORE_OK:
		/* No more instructions will be forwarded. */
		FUNC4(&oct->status, LIO_DEV_IN_RESET);

		oct->app_mode = LIO_DRV_INVALID_APP;
		FUNC14(oct, "Device state is now %s\n",
			    FUNC18(&oct->status));

		FUNC22(100);

		/* fallthrough */
	case LIO_DEV_HOST_OK:

		/* fallthrough */
	case LIO_DEV_CONSOLE_INIT_DONE:
		/* Remove any consoles */
		FUNC21(oct);

		/* fallthrough */
	case LIO_DEV_IO_QUEUES_DONE:
		if (FUNC26(oct))
			FUNC15(oct, "There were pending requests\n");

		if (FUNC24(oct))
			FUNC15(oct, "IQ had pending instructions\n");

		/*
		 * Disable the input and output queues now. No more packets will
		 * arrive from Octeon, but we should wait for all packet
		 * processing to finish.
		 */
		oct->fn_list.disable_io_queues(oct);

		if (FUNC25(oct))
			FUNC15(oct, "OQ had pending packets\n");

		/* fallthrough */
	case LIO_DEV_INTR_SET_DONE:
		/* Disable interrupts  */
		oct->fn_list.disable_interrupt(oct, OCTEON_ALL_INTR);

		if (oct->msix_on) {
			for (i = 0; i < oct->num_msix_irqs - 1; i++) {
				if (oct->ioq_vector[i].tag != NULL) {
					FUNC6(oct->device,
						  oct->ioq_vector[i].msix_res,
						      oct->ioq_vector[i].tag);
					oct->ioq_vector[i].tag = NULL;
				}
				if (oct->ioq_vector[i].msix_res != NULL) {
					FUNC5(oct->device,
						SYS_RES_IRQ,
						oct->ioq_vector[i].vector,
						oct->ioq_vector[i].msix_res);
					oct->ioq_vector[i].msix_res = NULL;
				}
			}
			/* non-iov vector's argument is oct struct */
			if (oct->tag != NULL) {
				FUNC6(oct->device, oct->msix_res,
						  oct->tag);
				oct->tag = NULL;
			}

			if (oct->msix_res != NULL) {
				FUNC5(oct->device, SYS_RES_IRQ,
						     oct->aux_vector,
						     oct->msix_res);
				oct->msix_res = NULL;
			}

			FUNC28(oct->device);
		}
		/* fallthrough */
	case LIO_DEV_IN_RESET:
	case LIO_DEV_DROQ_INIT_DONE:
		/* Wait for any pending operations */
		FUNC19(100);
		for (i = 0; i < FUNC2(oct); i++) {
			if (!(oct->io_qmask.oq & FUNC0(i)))
				continue;
			FUNC10(oct, i);
		}

		/* fallthrough */
	case LIO_DEV_RESP_LIST_INIT_DONE:
		for (i = 0; i < LIO_MAX_POSSIBLE_OUTPUT_QUEUES; i++) {
			if (oct->droq[i] != NULL) {
				FUNC7(oct->droq[i], M_DEVBUF);
				oct->droq[i] = NULL;
			}
		}
		FUNC12(oct);

		/* fallthrough */
	case LIO_DEV_INSTR_QUEUE_INIT_DONE:
		for (i = 0; i < FUNC1(oct); i++) {
			if (!(oct->io_qmask.iq & FUNC0(i)))
				continue;

			FUNC11(oct, i);
		}

		/* fallthrough */
	case LIO_DEV_MSIX_ALLOC_VECTOR_DONE:
		for (i = 0; i < LIO_MAX_POSSIBLE_INSTR_QUEUES; i++) {
			if (oct->instr_queue[i] != NULL) {
				FUNC7(oct->instr_queue[i], M_DEVBUF);
				oct->instr_queue[i] = NULL;
			}
		}
		FUNC16(oct);

		/* fallthrough */
	case LIO_DEV_SC_BUFF_POOL_INIT_DONE:
		FUNC17(oct);

		/* fallthrough */
	case LIO_DEV_DISPATCH_INIT_DONE:
		FUNC9(oct);

		/* fallthrough */
	case LIO_DEV_PCI_MAP_DONE:
		refcount = FUNC13(oct);

		if (FUNC8())
			FUNC20(oct);

		if (!refcount)
			oct->fn_list.soft_reset(oct);

		FUNC23(oct, 0);
		FUNC23(oct, 1);

		/* fallthrough */
	case LIO_DEV_PCI_ENABLE_DONE:
		/* Disable the device, releasing the PCI INT */
		FUNC27(oct->device);

		/* fallthrough */
	case LIO_DEV_BEGIN_STATE:
		break;
	}	/* end switch (oct->status) */
}