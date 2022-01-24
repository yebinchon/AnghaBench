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
struct fw_h {int dummy; } ;
struct fw_info {struct fw_h fw_h; } ;
struct fw_hdr {int /*<<< orphan*/  flags; } ;
struct adapter {int flags; int pf; int /*<<< orphan*/  mbox; scalar_t__ cfcsum; int /*<<< orphan*/  cfg_file; int /*<<< orphan*/  dev; } ;
typedef  enum dev_state { ____Placeholder_dev_state } dev_state ;

/* Variables and functions */
 int /*<<< orphan*/  A_PCIE_FW ; 
 int DEV_STATE_ERR ; 
 int DEV_STATE_UNINIT ; 
 int EINVAL ; 
 int EPROTO ; 
 int ERESTART ; 
 int FW_HDR_FLAGS_RESET_HALT ; 
 int FW_OK ; 
 int /*<<< orphan*/  MASTER_MAY ; 
 int MASTER_PF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  M_CXGBE ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,...) ; 
 struct fw_info* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct fw_hdr*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct adapter*,struct fw_h*,struct fw_h const*,char*,int*) ; 
 struct fw_hdr* FUNC7 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct adapter*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC11 (struct adapter*,struct fw_hdr*) ; 
 int /*<<< orphan*/  FUNC12 (struct adapter*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC13(struct adapter *sc)
{
	int rc, already = 0;
	enum dev_state state;
	struct fw_info *fw_info;
	struct fw_hdr *card_fw;		/* fw on the card */
	const struct fw_h *drv_fw;

	fw_info = FUNC4(FUNC2(sc));
	if (fw_info == NULL) {
		FUNC3(sc->dev,
		    "unable to look up firmware information for chip %d.\n",
		    FUNC2(sc));
		return (EINVAL);
	}
	drv_fw = &fw_info->fw_h;

	/* Read the header of the firmware on the card */
	card_fw = FUNC7(sizeof(*card_fw), M_CXGBE, M_ZERO | M_WAITOK);
restart:
	rc = -FUNC11(sc, card_fw);
	if (rc != 0) {
		FUNC3(sc->dev,
		    "unable to read firmware header from card's flash: %d\n",
		    rc);
		goto done;
	}

	rc = FUNC6(sc, (struct fw_h *)card_fw, drv_fw, NULL,
	    &already);
	if (rc == ERESTART)
		goto restart;
	if (rc != 0)
		goto done;

	rc = FUNC10(sc, sc->mbox, sc->mbox, MASTER_MAY, &state);
	if (rc < 0 || state == DEV_STATE_ERR) {
		rc = -rc;
		FUNC3(sc->dev,
		    "failed to connect to the firmware: %d, %d.  "
		    "PCIE_FW 0x%08x\n", rc, state, FUNC12(sc, A_PCIE_FW));
#if 0
		if (install_kld_firmware(sc, (struct fw_h *)card_fw, drv_fw,
		    "not responding properly to HELLO", &already) == ERESTART)
			goto restart;
#endif
		goto done;
	}
	FUNC0(FUNC1(card_fw->flags) & FW_HDR_FLAGS_RESET_HALT);
	sc->flags |= FW_OK;	/* The firmware responded to the FW_HELLO. */

	if (rc == sc->pf) {
		sc->flags |= MASTER_PF;
		rc = FUNC6(sc, (struct fw_h *)card_fw, drv_fw,
		    NULL, &already);
		if (rc == ERESTART)
			rc = 0;
		else if (rc != 0)
			goto done;
	} else if (state == DEV_STATE_UNINIT) {
		/*
		 * We didn't get to be the master so we definitely won't be
		 * configuring the chip.  It's a bug if someone else hasn't
		 * configured it already.
		 */
		FUNC3(sc->dev, "couldn't be master(%d), "
		    "device not already initialized either(%d).  "
		    "PCIE_FW 0x%08x\n", rc, state, FUNC12(sc, A_PCIE_FW));
		rc = EPROTO;
		goto done;
	} else {
		/*
		 * Some other PF is the master and has configured the chip.
		 * This is allowed but untested.
		 */
		FUNC3(sc->dev, "PF%d is master, device state %d.  "
		    "PCIE_FW 0x%08x\n", rc, state, FUNC12(sc, A_PCIE_FW));
		FUNC8(sc->cfg_file, sizeof(sc->cfg_file), "pf%d", rc);
		sc->cfcsum = 0;
		rc = 0;
	}
done:
	if (rc != 0 && sc->flags & FW_OK) {
		FUNC9(sc, sc->mbox);
		sc->flags &= ~FW_OK;
	}
	FUNC5(card_fw, M_CXGBE);
	return (rc);
}