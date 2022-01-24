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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
typedef  int u32 ;
struct port_tx_state {int dummy; } ;
struct fw_debug_cmd {int dummy; } ;
struct adapter {int flags; } ;
typedef  int /*<<< orphan*/  cmd_rpl ;
typedef  int const __be64 ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*) ; 
 int /*<<< orphan*/  A_CIM_PF_MAILBOX_CTRL ; 
 int /*<<< orphan*/  A_CIM_PF_MAILBOX_DATA ; 
 int /*<<< orphan*/  A_CIM_VF_EXT_MAILBOX_CTRL ; 
 int A_PCIE_FW ; 
 int CHK_MBOX_ACCESS ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int,int,char*,int const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,char*,int /*<<< orphan*/  const,int,int) ; 
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  EIO ; 
 int ENXIO ; 
 int ETIMEDOUT ; 
 scalar_t__ FW_DEBUG_CMD ; 
 int FW_T4VF_MBDATA_BASE_ADDR ; 
 int FW_T6VF_MBDATA_BASE_ADDR ; 
 int F_MBMSGVALID ; 
 int F_PCIE_FW_ERR ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int IS_VF ; 
 int MAX_NPORTS ; 
 int MBOX_LEN ; 
 int FUNC7 (int,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int) ; 
 int X_CIM_PF_NOACCESS ; 
 int X_MBOWNER_FW ; 
 int X_MBOWNER_NONE ; 
 int X_MBOWNER_PL ; 
 int FUNC11 (int const) ; 
 int /*<<< orphan*/  FUNC12 (struct adapter*,struct port_tx_state*) ; 
 int /*<<< orphan*/  FUNC13 (struct adapter*,struct fw_debug_cmd*) ; 
 int /*<<< orphan*/  FUNC14 (struct adapter*,int const*,int,int) ; 
 scalar_t__ FUNC15 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (void*,int const*,int) ; 
 int /*<<< orphan*/  FUNC18 (int const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (struct adapter*,struct port_tx_state*) ; 
 int /*<<< orphan*/  FUNC21 (struct adapter*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct adapter*) ; 
 int FUNC23 (struct adapter*,int) ; 
 int /*<<< orphan*/  FUNC24 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC25 (struct adapter*,int,int) ; 
 int /*<<< orphan*/  FUNC26 (struct adapter*,int,int) ; 

int FUNC27(struct adapter *adap, int mbox, const void *cmd,
			    int size, void *rpl, bool sleep_ok, int timeout)
{
	/*
	 * We delay in small increments at first in an effort to maintain
	 * responsiveness for simple, fast executing commands but then back
	 * off to larger delays to a maximum retry delay.
	 */
	static const int delay[] = {
		1, 1, 3, 5, 10, 10, 20, 50, 100
	};
	u32 v;
	u64 res;
	int i, ms, delay_idx, ret, next_tx_check;
	u32 data_reg = FUNC7(mbox, A_CIM_PF_MAILBOX_DATA);
	u32 ctl_reg = FUNC7(mbox, A_CIM_PF_MAILBOX_CTRL);
	u32 ctl;
	__be64 cmd_rpl[MBOX_LEN/8];
	u32 pcie_fw;
	struct port_tx_state tx_state[MAX_NPORTS];

	if (adap->flags & CHK_MBOX_ACCESS)
		FUNC1(adap);

	if (size <= 0 || (size & 15) || size > MBOX_LEN)
		return -EINVAL;

	if (adap->flags & IS_VF) {
		if (FUNC15(adap))
			data_reg = FW_T6VF_MBDATA_BASE_ADDR;
		else
			data_reg = FW_T4VF_MBDATA_BASE_ADDR;
		ctl_reg = FUNC8(A_CIM_VF_EXT_MAILBOX_CTRL);
	}

	/*
	 * If we have a negative timeout, that implies that we can't sleep.
	 */
	if (timeout < 0) {
		sleep_ok = false;
		timeout = -timeout;
	}

	/*
	 * Attempt to gain access to the mailbox.
	 */
	for (i = 0; i < 4; i++) {
		ctl = FUNC23(adap, ctl_reg);
		v = FUNC6(ctl);
		if (v != X_MBOWNER_NONE)
			break;
	}

	/*
	 * If we were unable to gain access, report the error to our caller.
	 */
	if (v != X_MBOWNER_PL) {
		FUNC24(adap);
		ret = (v == X_MBOWNER_FW) ? -EBUSY : -ETIMEDOUT;
		return ret;
	}

	/*
	 * If we gain ownership of the mailbox and there's a "valid" message
	 * in it, this is likely an asynchronous error message from the
	 * firmware.  So we'll report that and then proceed on with attempting
	 * to issue our own command ... which may well fail if the error
	 * presaged the firmware crashing ...
	 */
	if (ctl & F_MBMSGVALID) {
		FUNC2(adap, mbox, data_reg, "VLD", NULL, true);
	}

	/*
	 * Copy in the new mailbox command and send it on its way ...
	 */
	FUNC18(cmd_rpl, 0, sizeof(cmd_rpl));
	FUNC17(cmd_rpl, cmd, size);
	FUNC2(adap, mbox, 0, "cmd", cmd_rpl, false);
	for (i = 0; i < FUNC0(cmd_rpl); i++)
		FUNC26(adap, data_reg + i * 8, FUNC11(cmd_rpl[i]));

	if (adap->flags & IS_VF) {
		/*
		 * For the VFs, the Mailbox Data "registers" are
		 * actually backed by T4's "MA" interface rather than
		 * PL Registers (as is the case for the PFs).  Because
		 * these are in different coherency domains, the write
		 * to the VF's PL-register-backed Mailbox Control can
		 * race in front of the writes to the MA-backed VF
		 * Mailbox Data "registers".  So we need to do a
		 * read-back on at least one byte of the VF Mailbox
		 * Data registers before doing the write to the VF
		 * Mailbox Control register.
		 */
		FUNC23(adap, data_reg);
	}

	FUNC25(adap, ctl_reg, F_MBMSGVALID | FUNC10(X_MBOWNER_FW));
	FUNC20(adap, &tx_state[0]);	/* also flushes the write_reg */
	next_tx_check = 1000;
	delay_idx = 0;
	ms = delay[0];

	/*
	 * Loop waiting for the reply; bail out if we time out or the firmware
	 * reports an error.
	 */
	pcie_fw = 0;
	for (i = 0; i < timeout; i += ms) {
		if (!(adap->flags & IS_VF)) {
			pcie_fw = FUNC23(adap, A_PCIE_FW);
			if (pcie_fw & F_PCIE_FW_ERR)
				break;
		}

		if (i >= next_tx_check) {
			FUNC12(adap, &tx_state[0]);
			next_tx_check = i + 1000;
		}

		if (sleep_ok) {
			ms = delay[delay_idx];  /* last element may repeat */
			if (delay_idx < FUNC0(delay) - 1)
				delay_idx++;
			FUNC19(ms);
		} else {
			FUNC16(ms);
		}

		v = FUNC23(adap, ctl_reg);
		if (v == X_CIM_PF_NOACCESS)
			continue;
		if (FUNC6(v) == X_MBOWNER_PL) {
			if (!(v & F_MBMSGVALID)) {
				FUNC25(adap, ctl_reg,
					     FUNC10(X_MBOWNER_NONE));
				continue;
			}

			/*
			 * Retrieve the command reply and release the mailbox.
			 */
			FUNC14(adap, cmd_rpl, MBOX_LEN/8, data_reg);
			FUNC2(adap, mbox, 0, "rpl", cmd_rpl, false);
			FUNC25(adap, ctl_reg, FUNC10(X_MBOWNER_NONE));

			res = FUNC11(cmd_rpl[0]);
			if (FUNC4(res >> 32) == FW_DEBUG_CMD) {
				FUNC13(adap, (struct fw_debug_cmd *)cmd_rpl);
				res = FUNC9(EIO);
			} else if (rpl)
				FUNC17(rpl, cmd_rpl, size);
			return -FUNC5((int)res);
		}
	}

	/*
	 * We timed out waiting for a reply to our mailbox command.  Report
	 * the error and also check to see if the firmware reported any
	 * errors ...
	 */
	FUNC3(adap, "command %#x in mbox %d timed out (0x%08x).\n",
	    *(const u8 *)cmd, mbox, pcie_fw);
	FUNC2(adap, mbox, 0, "cmdsent", cmd_rpl, true);
	FUNC2(adap, mbox, data_reg, "current", NULL, true);

	if (pcie_fw & F_PCIE_FW_ERR) {
		ret = -ENXIO;
		FUNC24(adap);
	} else {
		ret = -ETIMEDOUT;
		FUNC22(adap);
	}

	FUNC21(adap, true);
	return ret;
}