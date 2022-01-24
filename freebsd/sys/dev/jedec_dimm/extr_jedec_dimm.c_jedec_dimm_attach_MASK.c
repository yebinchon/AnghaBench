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
typedef  int /*<<< orphan*/  uint16_t ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct jedec_dimm_softc {int spd_addr; int tsod_addr; char const* type_str; char const* part_str; char const* serial_str; char const* slotid_str; int /*<<< orphan*/  capacity_mb; int /*<<< orphan*/  smbus; int /*<<< orphan*/  dev; } ;
typedef  enum dram_type { ____Placeholder_dram_type } dram_type ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int CTLFLAG_MPSAFE ; 
 int CTLFLAG_RD ; 
 int CTLTYPE_INT ; 
#define  DRAM_TYPE_DDR3_SDRAM 129 
#define  DRAM_TYPE_DDR4_SDRAM 128 
 int EINVAL ; 
 int JEDEC_DTI_TSOD ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_TEMP ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  SPD_LEN_DDR3_PARTNUM ; 
 int /*<<< orphan*/  SPD_LEN_DDR3_SERIAL ; 
 int /*<<< orphan*/  SPD_LEN_DDR4_PARTNUM ; 
 int /*<<< orphan*/  SPD_LEN_DDR4_SERIAL ; 
 int /*<<< orphan*/  SPD_OFFSET_DDR3_PARTNUM ; 
 int /*<<< orphan*/  SPD_OFFSET_DDR3_SERIAL ; 
 int /*<<< orphan*/  SPD_OFFSET_DDR3_TSOD_PRESENT ; 
 int /*<<< orphan*/  SPD_OFFSET_DDR4_PARTNUM ; 
 int /*<<< orphan*/  SPD_OFFSET_DDR4_SERIAL ; 
 int /*<<< orphan*/  SPD_OFFSET_DDR4_TSOD_PRESENT ; 
 int /*<<< orphan*/  SPD_OFFSET_DRAM_TYPE ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,char const*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 struct sysctl_oid_list* FUNC3 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  TSOD_REG_DEV_REV ; 
 int /*<<< orphan*/  TSOD_REG_MANUFACTURER ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC4 (struct jedec_dimm_softc*,int) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct jedec_dimm_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 struct sysctl_ctx_list* FUNC9 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct jedec_dimm_softc*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct jedec_dimm_softc*,int) ; 
 int FUNC17 (struct jedec_dimm_softc*,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC18 (struct jedec_dimm_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jedec_dimm_temp_sysctl ; 
 char* FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC20 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const**) ; 
 int FUNC22 (int /*<<< orphan*/ ) ; 
 int FUNC23 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC24 (char const*,int,char*,...) ; 
 char const* FUNC25 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC26 (char const*) ; 

__attribute__((used)) static int
FUNC27(device_t dev)
{
	uint8_t byte;
	uint16_t devid;
	uint16_t partnum_len;
	uint16_t partnum_offset;
	uint16_t serial_len;
	uint16_t serial_offset;
	uint16_t tsod_present_offset;
	uint16_t vendorid;
	bool tsod_present;
	int rc;
	int new_desc_len;
	enum dram_type type;
	struct jedec_dimm_softc *sc;
	struct sysctl_ctx_list *ctx;
	struct sysctl_oid *oid;
	struct sysctl_oid_list *children;
	const char *tsod_match;
	const char *slotid_str;
	char *new_desc;

	sc = FUNC8(dev);
	ctx = FUNC9(dev);
	oid = FUNC10(dev);
	children = FUNC3(oid);

	FUNC4(sc, sizeof(*sc));
	sc->dev = dev;
	sc->smbus = FUNC7(dev);
	sc->spd_addr = FUNC22(dev);

	/* The TSOD address has a different DTI from the SPD address, but shares
	 * the LSA bits.
	 */
	sc->tsod_addr = JEDEC_DTI_TSOD | (sc->spd_addr & 0x0f);

	/* Read the DRAM type, and set the various offsets and lengths. */
	rc = FUNC23(sc->smbus, sc->spd_addr, SPD_OFFSET_DRAM_TYPE, &byte);
	if (rc != 0) {
		FUNC12(dev, "failed to read dram_type: %d\n", rc);
		goto out;
	}
	type = (enum dram_type) byte;
	switch (type) {
	case DRAM_TYPE_DDR3_SDRAM:
		(void) FUNC24(sc->type_str, sizeof(sc->type_str), "DDR3");
		partnum_len = SPD_LEN_DDR3_PARTNUM;
		partnum_offset = SPD_OFFSET_DDR3_PARTNUM;
		serial_len = SPD_LEN_DDR3_SERIAL;
		serial_offset = SPD_OFFSET_DDR3_SERIAL;
		tsod_present_offset = SPD_OFFSET_DDR3_TSOD_PRESENT;
		break;
	case DRAM_TYPE_DDR4_SDRAM:
		(void) FUNC24(sc->type_str, sizeof(sc->type_str), "DDR4");
		partnum_len = SPD_LEN_DDR4_PARTNUM;
		partnum_offset = SPD_OFFSET_DDR4_PARTNUM;
		serial_len = SPD_LEN_DDR4_SERIAL;
		serial_offset = SPD_OFFSET_DDR4_SERIAL;
		tsod_present_offset = SPD_OFFSET_DDR4_TSOD_PRESENT;
		break;
	default:
		FUNC12(dev, "unsupported dram_type 0x%02x\n", type);
		rc = EINVAL;
		goto out;
	}

	if (bootverbose) {
		/* bootverbose debuggery is best-effort, so ignore the rc. */
		(void) FUNC16(sc, type);
	}

	/* Read all the required info from the SPD. If any of it fails, error
	 * out without creating the sysctls.
	 */
	rc = FUNC15(sc, type, &sc->capacity_mb);
	if (rc != 0) {
		goto out;
	}

	rc = FUNC17(sc, sc->part_str, sizeof(sc->part_str),
	    partnum_offset, partnum_len, true);
	if (rc != 0) {
		goto out;
	}

	rc = FUNC17(sc, sc->serial_str, sizeof(sc->serial_str),
	    serial_offset, serial_len, false);
	if (rc != 0) {
		goto out;
	}

	/* The MSBit of the TSOD-presence byte reports whether or not the TSOD
	 * is in fact present. (While DDR3 and DDR4 don't explicitly require a
	 * TSOD, essentially all DDR3 and DDR4 DIMMs include one.) But, as
	 * discussed in [PR 235944], it turns out that some DIMMs claim to have
	 * a TSOD when they actually don't. (Or maybe the firmware blocks it?)
	 * <sigh>
	 * If the SPD data says the TSOD is present, try to read manufacturer
	 * and device info from it to confirm that it's a valid TSOD device.
	 * If the data is unreadable, just continue as if the TSOD isn't there.
	 * If the data was read successfully, see if it is a known TSOD device;
	 * it's okay if it isn't (tsod_match == NULL).
	 */
	rc = FUNC23(sc->smbus, sc->spd_addr, tsod_present_offset, &byte);
	if (rc != 0) {
		FUNC12(dev, "failed to read TSOD-present byte: %d\n",
		    rc);
		goto out;
	}
	if (byte & 0x80) {
		tsod_present = true;
		rc = FUNC18(sc, TSOD_REG_MANUFACTURER, &vendorid);
		if (rc != 0) {
			FUNC12(dev,
			    "failed to read TSOD Manufacturer ID\n");
			rc = 0;
			goto no_tsod;
		}
		rc = FUNC18(sc, TSOD_REG_DEV_REV, &devid);
		if (rc != 0) {
			FUNC12(dev, "failed to read TSOD Device ID\n");
			rc = 0;
			goto no_tsod;
		}

		tsod_match = FUNC19(vendorid, devid);
		if (bootverbose) {
			if (tsod_match == NULL) {
				FUNC12(dev,
				    "Unknown TSOD Manufacturer and Device IDs,"
				    " 0x%x and 0x%x\n", vendorid, devid);
			} else {
				FUNC12(dev,
				    "TSOD: %s\n", tsod_match);
			}
		}
	} else {
no_tsod:
		tsod_match = NULL;
		tsod_present = false;
	}

	FUNC1(ctx, children, OID_AUTO, "type",
	    CTLFLAG_RD | CTLFLAG_MPSAFE, sc->type_str, 0,
	    "DIMM type");

	FUNC2(ctx, children, OID_AUTO, "capacity",
	    CTLFLAG_RD | CTLFLAG_MPSAFE, NULL, sc->capacity_mb,
	    "DIMM capacity (MB)");

	FUNC1(ctx, children, OID_AUTO, "part",
	    CTLFLAG_RD | CTLFLAG_MPSAFE, sc->part_str, 0,
	    "DIMM Part Number");

	FUNC1(ctx, children, OID_AUTO, "serial",
	    CTLFLAG_RD | CTLFLAG_MPSAFE, sc->serial_str, 0,
	    "DIMM Serial Number");

	/* Create the temperature sysctl IFF the TSOD is present and valid */
	if (tsod_present && (tsod_match != NULL)) {
		FUNC0(ctx, children, OID_AUTO, "temp",
		    CTLTYPE_INT | CTLFLAG_RD | CTLFLAG_MPSAFE, dev, 0,
		    jedec_dimm_temp_sysctl, "IK", "DIMM temperature (deg C)");
	}

	/* If a "slotid" was hinted, add the sysctl for it. */
	if (FUNC21(FUNC6(dev), FUNC11(dev),
	    "slotid", &slotid_str) == 0) {
		if (slotid_str != NULL) {
			sc->slotid_str = FUNC25(slotid_str, M_DEVBUF);
			FUNC1(ctx, children, OID_AUTO, "slotid",
			    CTLFLAG_RD | CTLFLAG_MPSAFE, sc->slotid_str, 0,
			    "DIMM Slot Identifier");
		}
	}

	/* If a TSOD type string or a slotid are present, add them to the
	 * device description.
	 */
	if ((tsod_match != NULL) || (sc->slotid_str != NULL)) {
		new_desc_len = FUNC26(FUNC5(dev));
		if (tsod_match != NULL) {
			new_desc_len += FUNC26(tsod_match);
			new_desc_len += 4; /* " w/ " */
		}
		if (sc->slotid_str != NULL) {
			new_desc_len += FUNC26(sc->slotid_str);
			new_desc_len += 3; /* space + parens */
		}
		new_desc_len++; /* terminator */
		new_desc = FUNC20(new_desc_len, M_TEMP, (M_WAITOK | M_ZERO));
		(void) FUNC24(new_desc, new_desc_len, "%s%s%s%s%s%s",
		    FUNC5(dev),
		    (tsod_match ? " w/ " : ""),
		    (tsod_match ? tsod_match : ""),
		    (sc->slotid_str ? " (" : ""),
		    (sc->slotid_str ? sc->slotid_str : ""),
		    (sc->slotid_str ? ")" : ""));
		FUNC13(dev, new_desc);
		FUNC14(new_desc, M_TEMP);
	}

out:
	return (rc);
}