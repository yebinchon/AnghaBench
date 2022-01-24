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
typedef  int uint32_t ;
struct octeon_device {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCIEM_CTL_INITIATE_FLR ; 
 int PCIEM_STA_TRANSACTION_PND ; 
 int PCIER_DEVICE_CTL ; 
 int PCIER_DEVICE_STA ; 
 int /*<<< orphan*/  PCIM_CMD_INTxDIS ; 
 int PCIR_COMMAND ; 
 int /*<<< orphan*/  PCIY_EXPRESS ; 
 int /*<<< orphan*/  FUNC0 (struct octeon_device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC7(struct octeon_device *oct)
{
	uint32_t	exppos, status;

	FUNC2(oct->device, PCIY_EXPRESS, &exppos);

	FUNC5(oct->device);

	/* Quiesce the device completely */
	FUNC6(oct->device, PCIR_COMMAND, PCIM_CMD_INTxDIS, 2);

	/* Wait for Transaction Pending bit clean */
	FUNC1(100);

	status = FUNC3(oct->device, exppos + PCIER_DEVICE_STA, 2);
	if (status & PCIEM_STA_TRANSACTION_PND) {
		FUNC0(oct, "Function reset incomplete after 100ms, sleeping for 5 seconds\n");
		FUNC1(5);

		status = FUNC3(oct->device, exppos + PCIER_DEVICE_STA, 2);
		if (status & PCIEM_STA_TRANSACTION_PND)
			FUNC0(oct, "Function reset still incomplete after 5s, reset anyway\n");
	}

	FUNC6(oct->device, exppos + PCIER_DEVICE_CTL, PCIEM_CTL_INITIATE_FLR, 2);
	FUNC1(100);

	FUNC4(oct->device);
}