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
typedef  int uint32_t ;
struct mwl_hal_priv {scalar_t__ mh_SDRAMSIZE_Addr; scalar_t__* mh_cmdbuf; int /*<<< orphan*/  mh_dev; } ;
struct mwl_hal {int dummy; } ;
struct firmware {int* data; int datasize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int EIO ; 
 int ELOOP ; 
 int ENXIO ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FIRMWARE_UNLOAD ; 
 int FW_CHECK_USECS ; 
 int FW_DOWNLOAD_BLOCK_SIZE ; 
 int FW_MAX_NUM_CHECKS ; 
 int HostCmd_SOFTAP_FWRDY_SIGNATURE ; 
 int HostCmd_SOFTAP_MODE ; 
 int HostCmd_STA_MODE ; 
 int MACREG_A2HRIC_BIT_MASK ; 
 int /*<<< orphan*/  MACREG_REG_A2H_INTERRUPT_CAUSE ; 
 int /*<<< orphan*/  MACREG_REG_A2H_INTERRUPT_CLEAR_SEL ; 
 int /*<<< orphan*/  MACREG_REG_A2H_INTERRUPT_MASK ; 
 int /*<<< orphan*/  MACREG_REG_A2H_INTERRUPT_STATUS_MASK ; 
 int /*<<< orphan*/  MACREG_REG_GEN_PTR ; 
 int /*<<< orphan*/  MACREG_REG_INT_CODE ; 
 int /*<<< orphan*/  MACREG_REG_SCRATCH ; 
 struct mwl_hal_priv* FUNC1 (struct mwl_hal*) ; 
 int FUNC2 (struct mwl_hal_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mwl_hal_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 struct firmware* FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct firmware const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mwl_hal_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct mwl_hal_priv*,scalar_t__) ; 
 int FUNC9 (struct mwl_hal_priv*) ; 
 int /*<<< orphan*/  FUNC10 (struct mwl_hal_priv*,int,int const*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct mwl_hal_priv*,int const*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct mwl_hal_priv*) ; 

int
FUNC13(struct mwl_hal *mh0, void *fwargs)
{
	struct mwl_hal_priv *mh = FUNC1(mh0);
	const char *fwname = "mw88W8363fw";
	const char *fwbootname = "mwlboot";
	const struct firmware *fwboot = NULL;
	const struct firmware *fw;
	/* XXX get from firmware header */
	uint32_t FwReadySignature = HostCmd_SOFTAP_FWRDY_SIGNATURE;
	uint32_t OpMode = HostCmd_SOFTAP_MODE;
	const uint8_t *fp, *ep;
	const uint8_t *fmdata;
	uint32_t blocksize, nbytes, fmsize;
	int i, error, ntries;

	fw = FUNC5(fwname);
	if (fw == NULL) {
		FUNC4(mh->mh_dev,
		    "could not load firmware image %s\n", fwname);
		return ENXIO;
	}
	fmdata = fw->data;
	fmsize = fw->datasize;
	if (fmsize < 4) {
		FUNC4(mh->mh_dev, "firmware image %s too small\n",
		    fwname);
		error = ENXIO;
		goto bad2;
	}
	if (fmdata[0] == 0x01 && fmdata[1] == 0x00 &&
	    fmdata[2] == 0x00 && fmdata[3] == 0x00) {
		/*
		 * 2-stage load, get the boot firmware.
		 */
		fwboot = FUNC5(fwbootname);
		if (fwboot == NULL) {
			FUNC4(mh->mh_dev,
			    "could not load firmware image %s\n", fwbootname);
			error = ENXIO;
			goto bad2;
		}
	} else
		fwboot = NULL;

	FUNC7(mh);

	FUNC3(mh, MACREG_REG_A2H_INTERRUPT_CLEAR_SEL, MACREG_A2HRIC_BIT_MASK);
	FUNC3(mh, MACREG_REG_A2H_INTERRUPT_CAUSE, 0x00);
	FUNC3(mh, MACREG_REG_A2H_INTERRUPT_MASK, 0x00);
	FUNC3(mh, MACREG_REG_A2H_INTERRUPT_STATUS_MASK, MACREG_A2HRIC_BIT_MASK);
	if (mh->mh_SDRAMSIZE_Addr != 0) {
		/** Set up sdram controller for superflyv2 **/
		FUNC8(mh, mh->mh_SDRAMSIZE_Addr);
	}
	FUNC4(mh->mh_dev, "load %s firmware image (%u bytes)\n",
	    fwname, fmsize);
	if (fwboot != NULL) {
		/*
		 * Do 2-stage load.  The 1st stage loader is setup
		 * with the bootrom loader then we load the real
		 * image using a different handshake. With this
		 * mechanism the firmware is segmented into chunks
		 * that have a CRC.  If a chunk is incorrect we'll
		 * be told to retransmit.
		 */
		/* XXX assumes hlpimage fits in a block */
		/* NB: zero size block indicates download is finished */
		if (!FUNC10(mh, fwboot->datasize, fwboot->data, fwboot->datasize) ||
		    !FUNC10(mh, 0, NULL, 0)) {
			error = ETIMEDOUT;
			goto bad;
		}
		FUNC0(200*FW_CHECK_USECS);
		if (mh->mh_SDRAMSIZE_Addr != 0) {
			/** Set up sdram controller for superflyv2 **/
			FUNC8(mh, mh->mh_SDRAMSIZE_Addr);
		}
		nbytes = ntries = 0;		/* NB: silence compiler */
		for (fp = fmdata, ep = fp + fmsize; fp < ep; ) {
			FUNC3(mh, MACREG_REG_INT_CODE, 0);
			blocksize = FUNC2(mh, MACREG_REG_SCRATCH);
			if (blocksize == 0)	/* download complete */
				break;
			if (blocksize > 0x00000c00) {
				error = EINVAL;
				goto bad;
			}
			if ((blocksize & 0x1) == 0) {
				/* block successfully downloaded, advance */
				fp += nbytes;
				ntries = 0;
			} else {
				if (++ntries > 2) {
					/*
					 * Guard against f/w telling us to
					 * retry infinitely.
					 */
					error = ELOOP;
					goto bad;
				}
				/* clear NAK bit/flag */
				blocksize &= ~0x1;
			}
			if (blocksize > ep - fp) {
				/* XXX this should not happen, what to do? */
				blocksize = ep - fp;
			}
			nbytes = blocksize;
			if (!FUNC11(mh, fp, nbytes)) {
				error = ETIMEDOUT;
				goto bad;
			}
		}
	} else {
		for (fp = fmdata, ep = fp + fmsize; fp < ep;) {
			nbytes = ep - fp;
			if (nbytes > FW_DOWNLOAD_BLOCK_SIZE)
				nbytes = FW_DOWNLOAD_BLOCK_SIZE;
			if (!FUNC10(mh, FW_DOWNLOAD_BLOCK_SIZE, fp, nbytes)) {
				error = EIO;
				goto bad;
			}
			fp += nbytes;
		}
	}
	/* done with firmware... */
	if (fwboot != NULL)
		FUNC6(fwboot, FIRMWARE_UNLOAD);
	FUNC6(fw, FIRMWARE_UNLOAD);
	/*
	 * Wait for firmware to startup; we monitor the
	 * INT_CODE register waiting for a signature to
	 * written back indicating it's ready to go.
	 */
	mh->mh_cmdbuf[1] = 0;
	/*
	 * XXX WAR for mfg fw download
	 */
	if (OpMode != HostCmd_STA_MODE)
		FUNC12(mh);
	for (i = 0; i < FW_MAX_NUM_CHECKS; i++) {
		FUNC3(mh, MACREG_REG_GEN_PTR, OpMode);
		FUNC0(FW_CHECK_USECS);
		if (FUNC2(mh, MACREG_REG_INT_CODE) == FwReadySignature) {
			FUNC3(mh, MACREG_REG_INT_CODE, 0x00);
			return FUNC9(mh);
		}
	}
	return ETIMEDOUT;
bad:
	FUNC7(mh);
bad2:
	/* done with firmware... */
	if (fwboot != NULL)
		FUNC6(fwboot, FIRMWARE_UNLOAD);
	FUNC6(fw, FIRMWARE_UNLOAD);
	return error;
}