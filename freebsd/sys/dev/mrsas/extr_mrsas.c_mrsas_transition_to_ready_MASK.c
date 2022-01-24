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
typedef  int u_int8_t ;
typedef  int u_int32_t ;
struct mrsas_softc {int /*<<< orphan*/  mrsas_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENODEV ; 
 int MFI_INIT_CLEAR_HANDSHAKE ; 
 int MFI_INIT_HOTPLUG ; 
 int MFI_RESET_FLAGS ; 
#define  MFI_STATE_BB_INIT 137 
#define  MFI_STATE_BOOT_MESSAGE_PENDING 136 
#define  MFI_STATE_DEVICE_SCAN 135 
#define  MFI_STATE_FAULT 134 
#define  MFI_STATE_FLUSH_CACHE 133 
#define  MFI_STATE_FW_INIT 132 
#define  MFI_STATE_FW_INIT_2 131 
 int MFI_STATE_MASK ; 
#define  MFI_STATE_OPERATIONAL 130 
 int MFI_STATE_READY ; 
#define  MFI_STATE_UNDEFINED 129 
#define  MFI_STATE_WAIT_HANDSHAKE 128 
 int /*<<< orphan*/  MRSAS_OCR ; 
 int MRSAS_RESET_WAIT_TIME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  doorbell ; 
 int /*<<< orphan*/  FUNC2 (struct mrsas_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct mrsas_softc*,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct mrsas_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mrsas_reg_set ; 
 int /*<<< orphan*/  FUNC5 (struct mrsas_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  outbound_scratch_pad ; 

int
FUNC7(struct mrsas_softc *sc, int ocr)
{
	int i;
	u_int8_t max_wait;
	u_int32_t val, fw_state;
	u_int32_t cur_state;
	u_int32_t abs_state, curr_abs_state;

	val = FUNC4(sc, FUNC6(mrsas_reg_set, outbound_scratch_pad));
	fw_state = val & MFI_STATE_MASK;
	max_wait = MRSAS_RESET_WAIT_TIME;

	if (fw_state != MFI_STATE_READY)
		FUNC1(sc->mrsas_dev, "Waiting for FW to come to ready state\n");

	while (fw_state != MFI_STATE_READY) {
		abs_state = FUNC4(sc, FUNC6(mrsas_reg_set, outbound_scratch_pad));
		switch (fw_state) {
		case MFI_STATE_FAULT:
			FUNC1(sc->mrsas_dev, "FW is in FAULT state!!\n");
			if (ocr) {
				cur_state = MFI_STATE_FAULT;
				break;
			} else
				return -ENODEV;
		case MFI_STATE_WAIT_HANDSHAKE:
			/* Set the CLR bit in inbound doorbell */
			FUNC5(sc, FUNC6(mrsas_reg_set, doorbell),
			    MFI_INIT_CLEAR_HANDSHAKE | MFI_INIT_HOTPLUG);
			cur_state = MFI_STATE_WAIT_HANDSHAKE;
			break;
		case MFI_STATE_BOOT_MESSAGE_PENDING:
			FUNC5(sc, FUNC6(mrsas_reg_set, doorbell),
			    MFI_INIT_HOTPLUG);
			cur_state = MFI_STATE_BOOT_MESSAGE_PENDING;
			break;
		case MFI_STATE_OPERATIONAL:
			/*
			 * Bring it to READY state; assuming max wait 10
			 * secs
			 */
			FUNC2(sc);
			FUNC5(sc, FUNC6(mrsas_reg_set, doorbell), MFI_RESET_FLAGS);
			for (i = 0; i < max_wait * 1000; i++) {
				if (FUNC4(sc, FUNC6(mrsas_reg_set, doorbell)) & 1)
					FUNC0(1000);
				else
					break;
			}
			cur_state = MFI_STATE_OPERATIONAL;
			break;
		case MFI_STATE_UNDEFINED:
			/*
			 * This state should not last for more than 2
			 * seconds
			 */
			cur_state = MFI_STATE_UNDEFINED;
			break;
		case MFI_STATE_BB_INIT:
			cur_state = MFI_STATE_BB_INIT;
			break;
		case MFI_STATE_FW_INIT:
			cur_state = MFI_STATE_FW_INIT;
			break;
		case MFI_STATE_FW_INIT_2:
			cur_state = MFI_STATE_FW_INIT_2;
			break;
		case MFI_STATE_DEVICE_SCAN:
			cur_state = MFI_STATE_DEVICE_SCAN;
			break;
		case MFI_STATE_FLUSH_CACHE:
			cur_state = MFI_STATE_FLUSH_CACHE;
			break;
		default:
			FUNC1(sc->mrsas_dev, "Unknown state 0x%x\n", fw_state);
			return -ENODEV;
		}

		/*
		 * The cur_state should not last for more than max_wait secs
		 */
		for (i = 0; i < (max_wait * 1000); i++) {
			fw_state = (FUNC4(sc, FUNC6(mrsas_reg_set,
			    outbound_scratch_pad)) & MFI_STATE_MASK);
			curr_abs_state = FUNC4(sc, FUNC6(mrsas_reg_set,
			    outbound_scratch_pad));
			if (abs_state == curr_abs_state)
				FUNC0(1000);
			else
				break;
		}

		/*
		 * Return error if fw_state hasn't changed after max_wait
		 */
		if (curr_abs_state == abs_state) {
			FUNC1(sc->mrsas_dev, "FW state [%d] hasn't changed "
			    "in %d secs\n", fw_state, max_wait);
			return -ENODEV;
		}
	}
	FUNC3(sc, MRSAS_OCR, "FW now in Ready state\n");
	return 0;
}