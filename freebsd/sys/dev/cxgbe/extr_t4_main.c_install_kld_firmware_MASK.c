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
struct fw_hdr {int /*<<< orphan*/  fw_ver; } ;
struct fw_h {int /*<<< orphan*/  fw_ver; } ;
struct firmware {struct fw_h const* data; int /*<<< orphan*/  datasize; } ;
struct adapter {int flags; int /*<<< orphan*/  dev; int /*<<< orphan*/  mbox; } ;
typedef  int /*<<< orphan*/  bundled_fw ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ERESTART ; 
 int FW_OK ; 
 int /*<<< orphan*/  FUNC0 (int const) ; 
 int /*<<< orphan*/  FUNC1 (int const) ; 
 int /*<<< orphan*/  FUNC2 (int const) ; 
 int /*<<< orphan*/  FUNC3 (int const) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC7 (struct fw_h*,struct fw_h*) ; 
 int FUNC8 (struct adapter*,struct firmware const**,struct firmware const**) ; 
 int /*<<< orphan*/  FUNC9 (struct fw_h*,struct fw_h const*,int) ; 
 int t4_fw_install ; 
 int FUNC10 (struct adapter*,int /*<<< orphan*/ ,struct fw_h const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct adapter*,struct firmware const*,struct firmware const*) ; 

__attribute__((used)) static int
FUNC12(struct adapter *sc, struct fw_h *card_fw,
    const struct fw_h *drv_fw, const char *reason, int *already)
{
	const struct firmware *cfg, *fw;
	const uint32_t c = FUNC5(card_fw->fw_ver);
	uint32_t d, k;
	int rc, fw_install;
	struct fw_h bundled_fw;
	bool load_attempted;

	cfg = fw = NULL;
	load_attempted = false;
	fw_install = t4_fw_install < 0 ? -t4_fw_install : t4_fw_install;

	FUNC9(&bundled_fw, drv_fw, sizeof(bundled_fw));
	if (t4_fw_install < 0) {
		rc = FUNC8(sc, &cfg, &fw);
		if (rc != 0 || fw == NULL) {
			FUNC6(sc->dev,
			    "failed to load firmware module: %d. cfg %p, fw %p;"
			    " will use compiled-in firmware version for"
			    "hw.cxgbe.fw_install checks.\n",
			    rc, cfg, fw);
		} else {
			FUNC9(&bundled_fw, fw->data, sizeof(bundled_fw));
		}
		load_attempted = true;
	}
	d = FUNC5(bundled_fw.fw_ver);

	if (reason != NULL)
		goto install;

	if ((sc->flags & FW_OK) == 0) {

		if (c == 0xffffffff) {
			reason = "missing";
			goto install;
		}

		rc = 0;
		goto done;
	}

	if (!FUNC7(card_fw, &bundled_fw)) {
		reason = "incompatible or unusable";
		goto install;
	}

	if (d > c) {
		reason = "older than the version bundled with this driver";
		goto install;
	}

	if (fw_install == 2 && d != c) {
		reason = "different than the version bundled with this driver";
		goto install;
	}

	/* No reason to do anything to the firmware already on the card. */
	rc = 0;
	goto done;

install:
	rc = 0;
	if ((*already)++)
		goto done;

	if (fw_install == 0) {
		FUNC6(sc->dev, "firmware on card (%u.%u.%u.%u) is %s, "
		    "but the driver is prohibited from installing a firmware "
		    "on the card.\n",
		    FUNC1(c), FUNC3(c),
		    FUNC2(c), FUNC0(c), reason);

		goto done;
	}

	/*
	 * We'll attempt to install a firmware.  Load the module first (if it
	 * hasn't been loaded already).
	 */
	if (!load_attempted) {
		rc = FUNC8(sc, &cfg, &fw);
		if (rc != 0 || fw == NULL) {
			FUNC6(sc->dev,
			    "failed to load firmware module: %d. cfg %p, fw %p\n",
			    rc, cfg, fw);
			/* carry on */
		}
	}
	if (fw == NULL) {
		FUNC6(sc->dev, "firmware on card (%u.%u.%u.%u) is %s, "
		    "but the driver cannot take corrective action because it "
		    "is unable to load the firmware module.\n",
		    FUNC1(c), FUNC3(c),
		    FUNC2(c), FUNC0(c), reason);
		rc = sc->flags & FW_OK ? 0 : ENOENT;
		goto done;
	}
	k = FUNC5(((const struct fw_hdr *)fw->data)->fw_ver);
	if (k != d) {
		FUNC4(t4_fw_install > 0);
		FUNC6(sc->dev,
		    "firmware in KLD (%u.%u.%u.%u) is not what the driver was "
		    "expecting (%u.%u.%u.%u) and will not be used.\n",
		    FUNC1(k), FUNC3(k),
		    FUNC2(k), FUNC0(k),
		    FUNC1(d), FUNC3(d),
		    FUNC2(d), FUNC0(d));
		rc = sc->flags & FW_OK ? 0 : EINVAL;
		goto done;
	}

	FUNC6(sc->dev, "firmware on card (%u.%u.%u.%u) is %s, "
	    "installing firmware %u.%u.%u.%u on card.\n",
	    FUNC1(c), FUNC3(c),
	    FUNC2(c), FUNC0(c), reason,
	    FUNC1(d), FUNC3(d),
	    FUNC2(d), FUNC0(d));

	rc = -FUNC10(sc, sc->mbox, fw->data, fw->datasize, 0);
	if (rc != 0) {
		FUNC6(sc->dev, "failed to install firmware: %d\n", rc);
	} else {
		/* Installed successfully, update the cached header too. */
		rc = ERESTART;
		FUNC9(card_fw, fw->data, sizeof(*card_fw));
	}
done:
	FUNC11(sc, cfg, fw);

	return (rc);
}