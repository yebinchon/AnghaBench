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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int uint16_t ;
typedef  int u_long ;
struct mmcsd_softc {int rca; int /*<<< orphan*/  ext_csd; int /*<<< orphan*/  flags; int /*<<< orphan*/  mmcbus; int /*<<< orphan*/  dev; } ;
struct mmcsd_part {scalar_t__ ro; int ioctl; int type; struct mmcsd_softc* sc; int /*<<< orphan*/  ioctl_mtx; } ;
struct mmc_ioc_cmd {int write_flag; int blksz; int blocks; int opcode; int arg; scalar_t__ is_acmd; scalar_t__ data_ptr; int /*<<< orphan*/  response; int /*<<< orphan*/  flags; } ;
struct mmc_data {int opcode; int arg; int len; int error; int /*<<< orphan*/  resp; struct mmc_data* data; int /*<<< orphan*/  flags; } ;
struct mmc_command {int opcode; int arg; int len; int error; int /*<<< orphan*/  resp; struct mmc_command* data; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  data ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EBADF ; 
 int EILSEQ ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int ENXIO ; 
 int EOVERFLOW ; 
 int EPERM ; 
 int EROFS ; 
 int ETIMEDOUT ; 
 size_t EXT_CSD_PART_CONFIG ; 
 int EXT_CSD_PART_CONFIG_ACC_DEFAULT ; 
 int EXT_CSD_PART_CONFIG_ACC_MASK ; 
 int EXT_CSD_PART_CONFIG_ACC_RPMB ; 
 int FWRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MMCSD_CMD_RETRIES ; 
 int /*<<< orphan*/  MMCSD_DIRTY ; 
 int /*<<< orphan*/  FUNC3 (struct mmcsd_part*) ; 
 int /*<<< orphan*/  FUNC4 (struct mmcsd_part*) ; 
#define  MMC_APP_CMD 141 
 int /*<<< orphan*/  MMC_DATA_READ ; 
 int /*<<< orphan*/  MMC_DATA_WRITE ; 
#define  MMC_ERR_BADCRC 140 
#define  MMC_ERR_INVALID 139 
 int MMC_ERR_NONE ; 
#define  MMC_ERR_NO_MEMORY 138 
#define  MMC_ERR_TIMEOUT 137 
#define  MMC_FAST_IO 136 
#define  MMC_GO_INACTIVE_STATE 135 
 int MMC_IOC_MAX_BYTES ; 
#define  MMC_SELECT_CARD 134 
#define  MMC_SEND_CID 133 
#define  MMC_SEND_CSD 132 
#define  MMC_SEND_STATUS 131 
#define  MMC_SET_RELATIVE_ADDR 130 
#define  MMC_SLEEP_AWAKE 129 
#define  MMC_STOP_TRANSMISSION 128 
 int MMC_SWITCH_FUNC ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ R1_STATE_PRG ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int FUNC7 (void*,void*,int) ; 
 int FUNC8 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC9 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct mmc_data*,int /*<<< orphan*/ ,int) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct mmc_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mmc_data*,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct mmcsd_softc*,int,int) ; 
 int FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC19 (struct mmcsd_part*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct mmcsd_part*) ; 

__attribute__((used)) static int
FUNC21(struct mmcsd_part *part, struct mmc_ioc_cmd *mic, int fflag)
{
	struct mmc_command cmd;
	struct mmc_data data;
	struct mmcsd_softc *sc;
	device_t dev, mmcbus;
	void *dp;
	u_long len;
	int err, retries;
	uint32_t status;
	uint16_t rca;

	if ((fflag & FWRITE) == 0 && mic->write_flag != 0)
		return (EBADF);

	if (part->ro == TRUE && mic->write_flag != 0)
		return (EROFS);

	/*
	 * We don't need to explicitly lock against the disk(9) half of this
	 * driver as MMCBUS_ACQUIRE_BUS() will serialize us.  However, it's
	 * necessary to protect against races with detachment and suspension,
	 * especially since it's required to switch away from RPMB partitions
	 * again after an access (see mmcsd_switch_part()).
	 */
	FUNC3(part);
	while (part->ioctl != 0) {
		if (part->ioctl < 0) {
			FUNC4(part);
			return (ENXIO);
		}
		FUNC19(part, &part->ioctl_mtx, 0, "mmcsd IOCTL", 0);
	}
	part->ioctl = 1;
	FUNC4(part);

	err = 0;
	dp = NULL;
	len = mic->blksz * mic->blocks;
	if (len > MMC_IOC_MAX_BYTES) {
		err = EOVERFLOW;
		goto out;
	}
	if (len != 0) {
		dp = FUNC10(len, M_TEMP, M_WAITOK);
		err = FUNC7((void *)(uintptr_t)mic->data_ptr, dp, len);
		if (err != 0)
			goto out;
	}
	FUNC12(&cmd, 0, sizeof(cmd));
	FUNC12(&data, 0, sizeof(data));
	cmd.opcode = mic->opcode;
	cmd.arg = mic->arg;
	cmd.flags = mic->flags;
	if (len != 0) {
		data.len = len;
		data.data = dp;
		data.flags = mic->write_flag != 0 ? MMC_DATA_WRITE :
		    MMC_DATA_READ;
		cmd.data = &data;
	}
	sc = part->sc;
	rca = sc->rca;
	if (mic->is_acmd == 0) {
		/* Enforce/patch/restrict RCA-based commands */
		switch (cmd.opcode) {
		case MMC_SET_RELATIVE_ADDR:
		case MMC_SELECT_CARD:
			err = EPERM;
			goto out;
		case MMC_STOP_TRANSMISSION:
			if ((cmd.arg & 0x1) == 0)
				break;
			/* FALLTHROUGH */
		case MMC_SLEEP_AWAKE:
		case MMC_SEND_CSD:
		case MMC_SEND_CID:
		case MMC_SEND_STATUS:
		case MMC_GO_INACTIVE_STATE:
		case MMC_FAST_IO:
		case MMC_APP_CMD:
			cmd.arg = (cmd.arg & 0x0000FFFF) | (rca << 16);
			break;
		default:
			break;
		}
		/*
		 * No partition switching in userland; it's almost impossible
		 * to recover from that, especially if things go wrong.
		 */
		if (cmd.opcode == MMC_SWITCH_FUNC && dp != NULL &&
		    (((uint8_t *)dp)[EXT_CSD_PART_CONFIG] &
		    EXT_CSD_PART_CONFIG_ACC_MASK) != part->type) {
			err = EINVAL;
			goto out;
		}
	}
	dev = sc->dev;
	mmcbus = sc->mmcbus;
	FUNC1(mmcbus, dev);
	err = FUNC18(mmcbus, dev, rca, part->type);
	if (err != MMC_ERR_NONE)
		goto release;
	if (part->type == EXT_CSD_PART_CONFIG_ACC_RPMB) {
		err = FUNC17(sc, mic->blocks,
		    mic->write_flag & (1 << 31));
		if (err != MMC_ERR_NONE)
			goto switch_back;
	}
	if (mic->write_flag != 0)
		sc->flags |= MMCSD_DIRTY;
	if (mic->is_acmd != 0)
		(void)FUNC15(mmcbus, dev, rca, &cmd, 0);
	else
		(void)FUNC16(mmcbus, dev, &cmd, 0);
	if (part->type == EXT_CSD_PART_CONFIG_ACC_RPMB) {
		/*
		 * If the request went to the RPMB partition, try to ensure
		 * that the command actually has completed.
		 */
		retries = MMCSD_CMD_RETRIES;
		do {
			err = FUNC14(mmcbus, dev, rca, &status);
			if (err != MMC_ERR_NONE)
				break;
			if (FUNC6(status) == 0 &&
			    FUNC5(status) != R1_STATE_PRG)
				break;
			FUNC0(1000);
		} while (retries-- > 0);
	}
	/*
	 * If EXT_CSD was changed, our copy is outdated now.  Specifically,
	 * the upper bits of EXT_CSD_PART_CONFIG used in mmcsd_switch_part(),
	 * so retrieve EXT_CSD again.
	 */
	if (cmd.opcode == MMC_SWITCH_FUNC) {
		err = FUNC13(mmcbus, dev, sc->ext_csd);
		if (err != MMC_ERR_NONE)
			goto release;
	}
switch_back:
	if (part->type == EXT_CSD_PART_CONFIG_ACC_RPMB) {
		/*
		 * If the request went to the RPMB partition, always switch
		 * back to the default partition (see mmcsd_switch_part()).
		 */
		err = FUNC18(mmcbus, dev, rca,
		    EXT_CSD_PART_CONFIG_ACC_DEFAULT);
		if (err != MMC_ERR_NONE)
			goto release;
	}
	FUNC2(mmcbus, dev);
	if (cmd.error != MMC_ERR_NONE) {
		switch (cmd.error) {
		case MMC_ERR_TIMEOUT:
			err = ETIMEDOUT;
			break;
		case MMC_ERR_BADCRC:
			err = EILSEQ;
			break;
		case MMC_ERR_INVALID:
			err = EINVAL;
			break;
		case MMC_ERR_NO_MEMORY:
			err = ENOMEM;
			break;
		default:
			err = EIO;
			break;
		}
		goto out;
	}
	FUNC11(mic->response, cmd.resp, 4 * sizeof(uint32_t));
	if (mic->write_flag == 0 && len != 0) {
		err = FUNC8(dp, (void *)(uintptr_t)mic->data_ptr, len);
		if (err != 0)
			goto out;
	}
	goto out;

release:
	FUNC2(mmcbus, dev);
	err = EIO;

out:
	FUNC3(part);
	part->ioctl = 0;
	FUNC4(part);
	FUNC20(part);
	if (dp != NULL)
		FUNC9(dp, M_TEMP);
	return (err);
}