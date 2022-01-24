#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ uint16_t ;
struct bwi_softc {int /*<<< orphan*/  sc_dev; } ;
struct bwi_mac {TYPE_2__* mac_pcm; TYPE_1__* mac_ucode; struct bwi_softc* mac_sc; } ;
struct TYPE_4__ {int datasize; scalar_t__ data; } ;
struct TYPE_3__ {int datasize; scalar_t__ data; } ;

/* Variables and functions */
 int BWI_ALL_INTRS ; 
 int /*<<< orphan*/  BWI_COMM_MOBJ ; 
 int /*<<< orphan*/  BWI_COMM_MOBJ_FWPATCHLV ; 
 int /*<<< orphan*/  BWI_COMM_MOBJ_FWREV ; 
 int BWI_FWHDR_SZ ; 
 int BWI_FW_PCM_MOBJ ; 
 int BWI_FW_UCODE_MOBJ ; 
 scalar_t__ BWI_FW_VERSION3_REVMAX ; 
 scalar_t__ BWI_INTR_READY ; 
 int /*<<< orphan*/  BWI_MAC_INTR_STATUS ; 
 int /*<<< orphan*/  BWI_MAC_STATUS ; 
 int BWI_MAC_STATUS_IHREN ; 
 int BWI_MAC_STATUS_INFRA ; 
 int BWI_MAC_STATUS_UCODE_START ; 
 int /*<<< orphan*/  BWI_MOBJ_CTRL ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  BWI_MOBJ_DATA ; 
 int BWI_WR_MOBJ_AUTOINC ; 
 scalar_t__ FUNC1 (struct bwi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bwi_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int ENODEV ; 
 int ETIMEDOUT ; 
 scalar_t__ FUNC4 (struct bwi_mac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int NRETRY ; 
 int FUNC5 (scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int
FUNC7(struct bwi_mac *mac)
{
	struct bwi_softc *sc = mac->mac_sc;
	const uint32_t *fw;
	uint16_t fw_rev;
	int fw_len, i;

	/*
	 * Load ucode image
	 */
	fw = (const uint32_t *)
	     ((const uint8_t *)mac->mac_ucode->data + BWI_FWHDR_SZ);
	fw_len = (mac->mac_ucode->datasize - BWI_FWHDR_SZ) / sizeof(uint32_t);

	FUNC2(sc, BWI_MOBJ_CTRL,
		    FUNC0(
		    BWI_FW_UCODE_MOBJ | BWI_WR_MOBJ_AUTOINC, 0));
	for (i = 0; i < fw_len; ++i) {
		FUNC2(sc, BWI_MOBJ_DATA, FUNC5(fw[i]));
		FUNC3(10);
	}

	/*
	 * Load PCM image
	 */
	fw = (const uint32_t *)
	     ((const uint8_t *)mac->mac_pcm->data + BWI_FWHDR_SZ);
	fw_len = (mac->mac_pcm->datasize - BWI_FWHDR_SZ) / sizeof(uint32_t);

	FUNC2(sc, BWI_MOBJ_CTRL,
		    FUNC0(BWI_FW_PCM_MOBJ, 0x01ea));
	FUNC2(sc, BWI_MOBJ_DATA, 0x4000);

	FUNC2(sc, BWI_MOBJ_CTRL,
		    FUNC0(BWI_FW_PCM_MOBJ, 0x01eb));
	for (i = 0; i < fw_len; ++i) {
		FUNC2(sc, BWI_MOBJ_DATA, FUNC5(fw[i]));
		FUNC3(10);
	}

	FUNC2(sc, BWI_MAC_INTR_STATUS, BWI_ALL_INTRS);
	FUNC2(sc, BWI_MAC_STATUS,
		    BWI_MAC_STATUS_UCODE_START |
		    BWI_MAC_STATUS_IHREN |
		    BWI_MAC_STATUS_INFRA);

#define NRETRY	200

	for (i = 0; i < NRETRY; ++i) {
		uint32_t intr_status;

		intr_status = FUNC1(sc, BWI_MAC_INTR_STATUS);
		if (intr_status == BWI_INTR_READY)
			break;
		FUNC3(10);
	}
	if (i == NRETRY) {
		FUNC6(sc->sc_dev,
		    "firmware (ucode&pcm) loading timed out\n");
		return ETIMEDOUT;
	}

#undef NRETRY

	FUNC1(sc, BWI_MAC_INTR_STATUS);	/* dummy read */

	fw_rev = FUNC4(mac, BWI_COMM_MOBJ, BWI_COMM_MOBJ_FWREV);
	if (fw_rev > BWI_FW_VERSION3_REVMAX) {
		FUNC6(sc->sc_dev,
		    "firmware version 4 is not supported yet\n");
		return ENODEV;
	}

	FUNC6(sc->sc_dev,
	    "firmware rev 0x%04x, patch level 0x%04x\n", fw_rev,
	    FUNC4(mac, BWI_COMM_MOBJ, BWI_COMM_MOBJ_FWPATCHLV));
	return 0;
}