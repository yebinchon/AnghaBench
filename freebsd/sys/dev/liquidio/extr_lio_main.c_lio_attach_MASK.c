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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  unsigned long long uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct octeon_device {int rx_pause; int tx_pause; int /*<<< orphan*/  status; int /*<<< orphan*/ * droq; int /*<<< orphan*/ * watchdog_task; int /*<<< orphan*/  device; int /*<<< orphan*/  msix_on; int /*<<< orphan*/  rx_budget; int /*<<< orphan*/  tx_budget; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  LIO_CN23XX_SLI_SCRATCH1 ; 
 int /*<<< orphan*/  LIO_DEFAULT_RX_PKTS_PROCESS_BUDGET ; 
 int /*<<< orphan*/  LIO_DEFAULT_TX_PKTS_PROCESS_BUDGET ; 
 scalar_t__ LIO_DEV_CORE_OK ; 
 int /*<<< orphan*/  LIO_FLAG_MSIX_ENABLED ; 
 int LIO_NIC_STARTER_TIMEOUT ; 
 scalar_t__ LIO_STARTER_POLL_INTERVAL_MS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ cold ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct octeon_device*,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct octeon_device* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct octeon_device*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct octeon_device*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct octeon_device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int FUNC12 (struct octeon_device*) ; 
 unsigned long long FUNC13 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lio_watchdog ; 
 int /*<<< orphan*/  FUNC14 (struct octeon_device*,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC20(device_t device)
{
	struct octeon_device	*oct_dev = NULL;
	uint64_t	scratch1;
	uint32_t	error;
	int		timeout, ret = 1;
	uint8_t		bus, dev, function;

	oct_dev = FUNC4(device);
	if (oct_dev == NULL) {
		FUNC1(device, "Error: Unable to allocate device\n");
		return (-ENOMEM);
	}

	oct_dev->tx_budget = LIO_DEFAULT_TX_PKTS_PROCESS_BUDGET;
	oct_dev->rx_budget = LIO_DEFAULT_RX_PKTS_PROCESS_BUDGET;
	oct_dev->msix_on = LIO_FLAG_MSIX_ENABLED;

	oct_dev->device = device;
	bus = FUNC15(device);
	dev = FUNC18(device);
	function = FUNC17(device);

	FUNC8(oct_dev, "Initializing device %x:%x %02x:%02x.%01x\n",
		     FUNC19(device), FUNC16(device), bus, dev,
		     function);

	if (FUNC9(oct_dev)) {
		FUNC7(oct_dev, "Failed to init device\n");
		FUNC5(device);
		return (-ENOMEM);
	}

	scratch1 = FUNC13(oct_dev, LIO_CN23XX_SLI_SCRATCH1);
	if (!(scratch1 & 4ULL)) {
		/*
		 * Bit 2 of SLI_SCRATCH_1 is a flag that indicates that
		 * the lio watchdog kernel thread is running for this
		 * NIC.  Each NIC gets one watchdog kernel thread.
		 */
		scratch1 |= 4ULL;
		FUNC14(oct_dev, LIO_CN23XX_SLI_SCRATCH1, scratch1);

		error = FUNC2(lio_watchdog, oct_dev,
				     &oct_dev->watchdog_task, 0, 0,
				     "liowd/%02hhx:%02hhx.%hhx", bus,
				     dev, function);
		if (!error) {
			FUNC3(oct_dev->watchdog_task);
		} else {
			oct_dev->watchdog_task = NULL;
			FUNC7(oct_dev,
				    "failed to create kernel_thread\n");
			FUNC5(device);
			return (-1);
		}
	}
	oct_dev->rx_pause = 1;
	oct_dev->tx_pause = 1;

	timeout = 0;
	while (timeout < LIO_NIC_STARTER_TIMEOUT) {
		FUNC11(LIO_STARTER_POLL_INTERVAL_MS);
		timeout += LIO_STARTER_POLL_INTERVAL_MS;

		/*
		 * During the boot process interrupts are not available.
		 * So polling for first control message from FW.
		 */
		if (cold)
			FUNC10(oct_dev->droq[0], 0);

		if (FUNC0(&oct_dev->status) == LIO_DEV_CORE_OK) {
			ret = FUNC12(oct_dev);
			break;
		}
	}

	if (ret) {
		FUNC7(oct_dev, "Firmware failed to start\n");
		FUNC5(device);
		return (-EIO);
	}

	FUNC6(oct_dev, "Device is ready\n");

	return (0);
}