#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct iwm_softc {int dummy; } ;
struct iwm_fw_img {TYPE_1__* sec; } ;
struct TYPE_2__ {scalar_t__ offset; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 scalar_t__ IWM_CPU1_CPU2_SEPARATOR_SECTION ; 
 int /*<<< orphan*/  IWM_DEBUG_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct iwm_softc*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  IWM_FH_UCODE_LOAD_STATUS ; 
 scalar_t__ IWM_PAGING_SEPARATOR_SECTION ; 
 int FUNC1 (struct iwm_softc*,int /*<<< orphan*/ ) ; 
 int IWM_UCODE_SECTION_MAX ; 
 int /*<<< orphan*/  FUNC2 (struct iwm_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct iwm_softc*) ; 
 scalar_t__ FUNC4 (struct iwm_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct iwm_softc*) ; 
 int FUNC6 (struct iwm_softc*,int,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC7(struct iwm_softc *sc,
	const struct iwm_fw_img *image, int cpu, int *first_ucode_section)
{
	int shift_param;
	int i, ret = 0, sec_num = 0x1;
	uint32_t val, last_read_idx = 0;

	if (cpu == 1) {
		shift_param = 0;
		*first_ucode_section = 0;
	} else {
		shift_param = 16;
		(*first_ucode_section)++;
	}

	for (i = *first_ucode_section; i < IWM_UCODE_SECTION_MAX; i++) {
		last_read_idx = i;

		/*
		 * CPU1_CPU2_SEPARATOR_SECTION delimiter - separate between
		 * CPU1 to CPU2.
		 * PAGING_SEPARATOR_SECTION delimiter - separate between
		 * CPU2 non paged to CPU2 paging sec.
		 */
		if (!image->sec[i].data ||
		    image->sec[i].offset == IWM_CPU1_CPU2_SEPARATOR_SECTION ||
		    image->sec[i].offset == IWM_PAGING_SEPARATOR_SECTION) {
			FUNC0(sc, IWM_DEBUG_RESET,
				    "Break since Data not valid or Empty section, sec = %d\n",
				    i);
			break;
		}
		ret = FUNC6(sc, i, &image->sec[i]);
		if (ret)
			return ret;

		/* Notify the ucode of the loaded section number and status */
		if (FUNC4(sc)) {
			val = FUNC1(sc, IWM_FH_UCODE_LOAD_STATUS);
			val = val | (sec_num << shift_param);
			FUNC2(sc, IWM_FH_UCODE_LOAD_STATUS, val);
			sec_num = (sec_num << 1) | 0x1;
			FUNC5(sc);
		}
	}

	*first_ucode_section = last_read_idx;

	FUNC3(sc);

	if (FUNC4(sc)) {
		if (cpu == 1)
			FUNC2(sc, IWM_FH_UCODE_LOAD_STATUS, 0xFFFF);
		else
			FUNC2(sc, IWM_FH_UCODE_LOAD_STATUS, 0xFFFFFFFF);
		FUNC5(sc);
	}

	return 0;
}