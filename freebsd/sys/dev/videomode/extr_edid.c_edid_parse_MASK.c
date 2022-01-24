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
typedef  int uint8_t ;
typedef  int uint16_t ;
struct videomode {int dot_clock; } ;
struct TYPE_3__ {int er_max_clock; } ;
struct TYPE_4__ {int /*<<< orphan*/  ec_whitey; int /*<<< orphan*/  ec_whitex; int /*<<< orphan*/  ec_bluey; int /*<<< orphan*/  ec_bluex; int /*<<< orphan*/  ec_greeny; int /*<<< orphan*/  ec_greenx; void* ec_redy; void* ec_redx; } ;
struct edid_info {int edid_product; char* edid_vendorname; char* edid_productname; char* edid_serial; size_t edid_nmodes; char* edid_comment; TYPE_1__ edid_range; scalar_t__ edid_have_range; struct videomode* edid_modes; int /*<<< orphan*/ * edid_preferred_mode; int /*<<< orphan*/  edid_ext_block_count; TYPE_2__ edid_chroma; int /*<<< orphan*/  edid_features; int /*<<< orphan*/  edid_gamma; int /*<<< orphan*/  edid_max_vsize; int /*<<< orphan*/  edid_max_hsize; int /*<<< orphan*/  edid_video_input; int /*<<< orphan*/  edid_revision; int /*<<< orphan*/  edid_version; int /*<<< orphan*/  edid_year; int /*<<< orphan*/  edid_week; int /*<<< orphan*/ * edid_vendor; } ;

/* Variables and functions */
 int EDID_BLOCK_COUNT ; 
 int EDID_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 void* FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 
 int FUNC7 (int*) ; 
 int /*<<< orphan*/  FUNC8 (int*) ; 
 int /*<<< orphan*/  FUNC9 (int*) ; 
 int /*<<< orphan*/  FUNC10 (int*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int*) ; 
 int /*<<< orphan*/  FUNC15 (int*) ; 
 int EDID_OFFSET_DESC_BLOCK ; 
 size_t EDID_OFFSET_PRODUCT_ID ; 
 int EDID_OFFSET_STD_TIMING ; 
 int /*<<< orphan*/  FUNC16 (int*) ; 
 int FUNC17 (int*) ; 
 int EDID_STD_TIMING_COUNT ; 
 int FUNC18 (int*) ; 
 int /*<<< orphan*/  FUNC19 (int*) ; 
 int /*<<< orphan*/  FUNC20 (int*) ; 
 int /*<<< orphan*/  FUNC21 (int*) ; 
 int /*<<< orphan*/  FUNC22 (int*) ; 
 char** _edid_modes ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC23 (struct edid_info*,int*) ; 
 char* FUNC24 (int /*<<< orphan*/ *,int) ; 
 char* FUNC25 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC26 (int*) ; 
 struct videomode* FUNC27 (char*) ; 
 struct videomode* FUNC28 (struct edid_info*,struct videomode*) ; 
 scalar_t__ FUNC29 (int*,struct videomode*) ; 
 int /*<<< orphan*/  FUNC30 (char*) ; 
 int /*<<< orphan*/  FUNC31 (char*,...) ; 
 int /*<<< orphan*/  FUNC32 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC33 (char*,char const*,int) ; 

int
FUNC34(uint8_t *data, struct edid_info *edid)
{
	uint16_t		manfid, estmodes;
	const struct videomode	*vmp;
	int			i;
	const char		*name;
	int max_dotclock = 0;
	int mhz;

	if (FUNC26(data) != 0)
		return -1;

	/* get product identification */
	manfid = FUNC18(data);
	edid->edid_vendor[0] = FUNC11(manfid);
	edid->edid_vendor[1] = FUNC12(manfid);
	edid->edid_vendor[2] = FUNC13(manfid);
	edid->edid_vendor[3] = 0;	/* null terminate for convenience */

	edid->edid_product = data[EDID_OFFSET_PRODUCT_ID] + 
	    (data[EDID_OFFSET_PRODUCT_ID + 1] << 8);

	name = FUNC25(edid->edid_vendor);
	if (name != NULL)
		FUNC33(edid->edid_vendorname, name,
		    sizeof(edid->edid_vendorname));
	else
		edid->edid_vendorname[0] = '\0';

	name = FUNC24(edid->edid_vendor, edid->edid_product);
	if (name != NULL)
		FUNC33(edid->edid_productname, name,
		    sizeof(edid->edid_productname));
	else
	    edid->edid_productname[0] = '\0';

	FUNC32(edid->edid_serial, sizeof(edid->edid_serial), "%08x",
	    FUNC17(data));

	edid->edid_week = FUNC21(data);
	edid->edid_year = FUNC22(data);

	/* get edid revision */
	edid->edid_version = FUNC19(data);
	edid->edid_revision = FUNC16(data);

	edid->edid_video_input = FUNC20(data);
	edid->edid_max_hsize = FUNC14(data);
	edid->edid_max_vsize = FUNC15(data);

	edid->edid_gamma = FUNC10(data);
	edid->edid_features = FUNC9(data);

	edid->edid_chroma.ec_redx = FUNC4(data);
	edid->edid_chroma.ec_redy = FUNC4(data);
	edid->edid_chroma.ec_greenx = FUNC2(data);
	edid->edid_chroma.ec_greeny = FUNC3(data);
	edid->edid_chroma.ec_bluex = FUNC0(data);
	edid->edid_chroma.ec_bluey = FUNC1(data);
	edid->edid_chroma.ec_whitex = FUNC5(data);
	edid->edid_chroma.ec_whitey = FUNC6(data);

	edid->edid_ext_block_count = FUNC8(data);

	/* lookup established modes */
	edid->edid_nmodes = 0;
	edid->edid_preferred_mode = NULL;
	estmodes = FUNC7(data);
	/* Iterate in esztablished timing order */
	for (i = 15; i >= 0; i--) {
		if (estmodes & (1 << i)) {
			vmp = FUNC27(_edid_modes[i]);
			if (vmp != NULL) {
				edid->edid_modes[edid->edid_nmodes] = *vmp;
				edid->edid_nmodes++;
			}
#ifdef DIAGNOSTIC
			  else
				printf("no data for est. mode %s\n",
				    _edid_modes[i]);
#endif
		}
	}

	/* do standard timing section */
	for (i = 0; i < EDID_STD_TIMING_COUNT; i++) {
		struct videomode	mode, *exist_mode;
		if (FUNC29(data + EDID_OFFSET_STD_TIMING + i * 2,
			&mode)) {
			/* Does this mode already exist? */
			exist_mode = FUNC28(edid, &mode);
			if (exist_mode == NULL) {
				edid->edid_modes[edid->edid_nmodes] = mode;
				edid->edid_nmodes++;
			}
		}
	}

	/* do detailed timings and descriptors */
	for (i = 0; i < EDID_BLOCK_COUNT; i++) {
		FUNC23(edid, data + EDID_OFFSET_DESC_BLOCK +
		    i * EDID_BLOCK_SIZE);
	}

	FUNC30(edid->edid_vendorname);
	FUNC30(edid->edid_productname);
	FUNC30(edid->edid_serial);
	FUNC30(edid->edid_comment);

	/*
	 * XXX
	 * some monitors lie about their maximum supported dot clock
	 * by claiming to support modes which need a higher dot clock
	 * than the stated maximum.
	 * For sanity's sake we bump it to the highest dot clock we find
	 * in the list of supported modes
	 */
	for (i = 0; i < edid->edid_nmodes; i++)
		if (edid->edid_modes[i].dot_clock > max_dotclock)
			max_dotclock = edid->edid_modes[i].dot_clock;
	if (bootverbose) {
		FUNC31("edid: max_dotclock according to supported modes: %d\n",
		    max_dotclock);
	}
	mhz = (max_dotclock + 999) / 1000;

	if (edid->edid_have_range) {
		if (mhz > edid->edid_range.er_max_clock)
			edid->edid_range.er_max_clock = mhz;
	} else
		edid->edid_range.er_max_clock = mhz;

	return 0;
}