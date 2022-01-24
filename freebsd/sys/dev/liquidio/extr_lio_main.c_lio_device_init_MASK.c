#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_7__ {int (* setup_device_regs ) (struct octeon_device*) ;int (* enable_io_queues ) (struct octeon_device*) ;int /*<<< orphan*/  (* enable_interrupt ) (struct octeon_device*,int /*<<< orphan*/ ) ;scalar_t__ (* soft_reset ) (struct octeon_device*) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  num_pf_rings; } ;
struct octeon_device {int num_oqs; int /*<<< orphan*/  status; TYPE_4__* console; TYPE_3__ fn_list; TYPE_2__** droq; TYPE_1__ sriov_info; int /*<<< orphan*/ ** instr_queue; int /*<<< orphan*/  app_mode; int /*<<< orphan*/  device; } ;
struct lio_instr_queue {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  print; } ;
struct TYPE_6__ {int /*<<< orphan*/  max_count; int /*<<< orphan*/  pkts_credit_reg; } ;

/* Variables and functions */
 unsigned long LIO_DDR_TIMEOUT ; 
 int /*<<< orphan*/  LIO_DEV_BEGIN_STATE ; 
 int /*<<< orphan*/  LIO_DEV_CONSOLE_INIT_DONE ; 
 int /*<<< orphan*/  LIO_DEV_DISPATCH_INIT_DONE ; 
 int /*<<< orphan*/  LIO_DEV_DROQ_INIT_DONE ; 
 int /*<<< orphan*/  LIO_DEV_HOST_OK ; 
 int /*<<< orphan*/  LIO_DEV_INSTR_QUEUE_INIT_DONE ; 
 int /*<<< orphan*/  LIO_DEV_INTR_SET_DONE ; 
 int /*<<< orphan*/  LIO_DEV_IO_QUEUES_DONE ; 
 int /*<<< orphan*/  LIO_DEV_MSIX_ALLOC_VECTOR_DONE ; 
 int /*<<< orphan*/  LIO_DEV_PCI_ENABLE_DONE ; 
 int /*<<< orphan*/  LIO_DEV_PCI_MAP_DONE ; 
 int /*<<< orphan*/  LIO_DEV_RESP_LIST_INIT_DONE ; 
 int /*<<< orphan*/  LIO_DEV_SC_BUFF_POOL_INIT_DONE ; 
 int /*<<< orphan*/  LIO_DRV_INVALID_APP ; 
 int LIO_MAX_POSSIBLE_INSTR_QUEUES ; 
 int LIO_MAX_POSSIBLE_OUTPUT_QUEUES ; 
 int /*<<< orphan*/  LIO_OPCODE_NIC ; 
 int /*<<< orphan*/  LIO_OPCODE_NIC_CORE_DRV_ACTIVE ; 
 int /*<<< orphan*/  LIO_RESET_MSECS ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  OCTEON_ALL_INTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct octeon_device*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (struct octeon_device*) ; 
 scalar_t__ FUNC4 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct octeon_device*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct octeon_device*,char*,int) ; 
 int /*<<< orphan*/  lio_core_drv_init ; 
 int /*<<< orphan*/  lio_dbg_console_print ; 
 int /*<<< orphan*/  FUNC8 (struct octeon_device*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct octeon_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (struct octeon_device*,char*) ; 
 int FUNC11 (struct octeon_device*) ; 
 scalar_t__ FUNC12 (struct octeon_device*) ; 
 int FUNC13 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (struct octeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (struct octeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct octeon_device*) ; 
 scalar_t__ FUNC17 (struct octeon_device*) ; 
 scalar_t__ FUNC18 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (struct octeon_device*) ; 
 scalar_t__ FUNC20 (struct octeon_device*) ; 
 scalar_t__ FUNC21 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (struct octeon_device*,int) ; 
 int FUNC24 (struct octeon_device*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC25 (struct octeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC26 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC27 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC32 (struct octeon_device*) ; 
 int FUNC33 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC34 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 int FUNC35 (struct octeon_device*) ; 

__attribute__((used)) static int
FUNC36(struct octeon_device *octeon_dev)
{
	unsigned long	ddr_timeout = LIO_DDR_TIMEOUT;
	char	*dbg_enb = NULL;
	int	fw_loaded = 0;
	int	i, j, ret;
	uint8_t	bus, dev, function;
	char	bootcmd[] = "\n";

	bus = FUNC29(octeon_dev->device);
	dev = FUNC31(octeon_dev->device);
	function = FUNC30(octeon_dev->device);

	FUNC0(&octeon_dev->status, LIO_DEV_BEGIN_STATE);

	/* Enable access to the octeon device */
	if (FUNC28(octeon_dev->device)) {
		FUNC9(octeon_dev, "pci_enable_device failed\n");
		return (1);
	}

	FUNC0(&octeon_dev->status, LIO_DEV_PCI_ENABLE_DONE);

	/* Identify the Octeon type and map the BAR address space. */
	if (FUNC4(octeon_dev)) {
		FUNC9(octeon_dev, "Chip specific setup failed\n");
		return (1);
	}

	FUNC0(&octeon_dev->status, LIO_DEV_PCI_MAP_DONE);

	/*
	 * Only add a reference after setting status 'OCT_DEV_PCI_MAP_DONE',
	 * since that is what is required for the reference to be removed
	 * during de-initialization (see 'octeon_destroy_resources').
	 */
	FUNC15(octeon_dev, bus, dev, function, true);


	octeon_dev->app_mode = LIO_DRV_INVALID_APP;

	if (!FUNC5(octeon_dev) && !FUNC1()) {
		fw_loaded = 0;
		/* Do a soft reset of the Octeon device. */
		if (octeon_dev->fn_list.soft_reset(octeon_dev))
			return (1);

		/* things might have changed */
		if (!FUNC5(octeon_dev))
			fw_loaded = 0;
		else
			fw_loaded = 1;
	} else {
		fw_loaded = 1;
	}

	/*
	 * Initialize the dispatch mechanism used to push packets arriving on
	 * Octeon Output queues.
	 */
	if (FUNC12(octeon_dev))
		return (1);

	FUNC16(octeon_dev, LIO_OPCODE_NIC,
				 LIO_OPCODE_NIC_CORE_DRV_ACTIVE,
				 lio_core_drv_init, octeon_dev);
	FUNC0(&octeon_dev->status, LIO_DEV_DISPATCH_INIT_DONE);

	ret = octeon_dev->fn_list.setup_device_regs(octeon_dev);
	if (ret) {
		FUNC9(octeon_dev,
			    "Failed to configure device registers\n");
		return (ret);
	}

	/* Initialize soft command buffer pool */
	if (FUNC21(octeon_dev)) {
		FUNC9(octeon_dev, "sc buffer pool allocation failed\n");
		return (1);
	}

	FUNC0(&octeon_dev->status,
			     LIO_DEV_SC_BUFF_POOL_INIT_DONE);

	if (FUNC3(octeon_dev)) {
		FUNC9(octeon_dev,
			    "IOQ vector allocation failed\n");
		return (1);
	}

	FUNC0(&octeon_dev->status,
			     LIO_DEV_MSIX_ALLOC_VECTOR_DONE);

	for (i = 0; i < LIO_MAX_POSSIBLE_INSTR_QUEUES; i++) {
		octeon_dev->instr_queue[i] =
			FUNC26(sizeof(struct lio_instr_queue),
			       M_DEVBUF, M_NOWAIT | M_ZERO);
		if (octeon_dev->instr_queue[i] == NULL)
			return (1);
	}

	/* Setup the data structures that manage this Octeon's Input queues. */
	if (FUNC17(octeon_dev)) {
		FUNC9(octeon_dev,
			    "Instruction queue initialization failed\n");
		return (1);
	}

	FUNC0(&octeon_dev->status,
			     LIO_DEV_INSTR_QUEUE_INIT_DONE);

	/*
	 * Initialize lists to manage the requests of different types that
	 * arrive from user & kernel applications for this octeon device.
	 */

	if (FUNC20(octeon_dev)) {
		FUNC9(octeon_dev, "Response list allocation failed\n");
		return (1);
	}

	FUNC0(&octeon_dev->status, LIO_DEV_RESP_LIST_INIT_DONE);

	for (i = 0; i < LIO_MAX_POSSIBLE_OUTPUT_QUEUES; i++) {
		octeon_dev->droq[i] = FUNC26(sizeof(*octeon_dev->droq[i]),
					     M_DEVBUF, M_NOWAIT | M_ZERO);
		if (octeon_dev->droq[i] == NULL)
			return (1);
	}

	if (FUNC19(octeon_dev)) {
		FUNC9(octeon_dev, "Output queue initialization failed\n");
		return (1);
	}

	FUNC0(&octeon_dev->status, LIO_DEV_DROQ_INIT_DONE);

	/*
	 * Setup the interrupt handler and record the INT SUM register address
	 */
	if (FUNC18(octeon_dev,
				octeon_dev->sriov_info.num_pf_rings))
		return (1);

	/* Enable Octeon device interrupts */
	octeon_dev->fn_list.enable_interrupt(octeon_dev, OCTEON_ALL_INTR);

	FUNC0(&octeon_dev->status, LIO_DEV_INTR_SET_DONE);

	/*
	 * Send Credit for Octeon Output queues. Credits are always sent BEFORE
	 * the output queue is enabled.
	 * This ensures that we'll receive the f/w CORE DRV_ACTIVE message in
	 * case we've configured CN23XX_SLI_GBL_CONTROL[NOPTR_D] = 0.
	 * Otherwise, it is possible that the DRV_ACTIVE message will be sent
	 * before any credits have been issued, causing the ring to be reset
	 * (and the f/w appear to never have started).
	 */
	for (j = 0; j < octeon_dev->num_oqs; j++)
		FUNC25(octeon_dev,
				octeon_dev->droq[j]->pkts_credit_reg,
				octeon_dev->droq[j]->max_count);

	/* Enable the input and output queues for this Octeon device */
	ret = octeon_dev->fn_list.enable_io_queues(octeon_dev);
	if (ret) {
		FUNC9(octeon_dev, "Failed to enable input/output queues");
		return (ret);
	}

	FUNC0(&octeon_dev->status, LIO_DEV_IO_QUEUES_DONE);

	if (!fw_loaded) {
		FUNC8(octeon_dev, "Waiting for DDR initialization...\n");
		if (!ddr_timeout) {
			FUNC10(octeon_dev,
				     "WAITING. Set ddr_timeout to non-zero value to proceed with initialization.\n");
		}

		FUNC22(LIO_RESET_MSECS);

		/*
		 * Wait for the octeon to initialize DDR after the
		 * soft-reset.
		 */
		while (!ddr_timeout) {
			if (FUNC27("-", FUNC14(100))) {
				/* user probably pressed Control-C */
				return (1);
			}
		}

		ret = FUNC24(octeon_dev, &ddr_timeout);
		if (ret) {
			FUNC9(octeon_dev,
				    "DDR not initialized. Please confirm that board is configured to boot from Flash, ret: %d\n",
				    ret);
			return (1);
		}

		if (FUNC23(octeon_dev, 1100)) {
			FUNC9(octeon_dev, "Board not responding\n");
			return (1);
		}

		/* Divert uboot to take commands from host instead. */
		ret = FUNC7(octeon_dev, bootcmd, 50);

		FUNC8(octeon_dev, "Initializing consoles\n");
		ret = FUNC11(octeon_dev);
		if (ret) {
			FUNC9(octeon_dev, "Could not access board consoles\n");
			return (1);
		}

		/*
		 * If console debug enabled, specify empty string to
		 * use default enablement ELSE specify NULL string for
		 * 'disabled'.
		 */
		dbg_enb = FUNC6(0) ? "" : NULL;
		ret = FUNC2(octeon_dev, 0, dbg_enb);

		if (ret) {
			FUNC9(octeon_dev, "Could not access board console\n");
			return (1);
		} else if (FUNC6(0)) {
			/*
			 * If console was added AND we're logging console output
			 * then set our console print function.
			 */
			octeon_dev->console[0].print = lio_dbg_console_print;
		}

		FUNC0(&octeon_dev->status,
				     LIO_DEV_CONSOLE_INIT_DONE);

		FUNC8(octeon_dev, "Loading firmware\n");

		ret = FUNC13(octeon_dev);
		if (ret) {
			FUNC9(octeon_dev, "Could not load firmware to board\n");
			return (1);
		}
	}

	FUNC0(&octeon_dev->status, LIO_DEV_HOST_OK);

	return (0);
}