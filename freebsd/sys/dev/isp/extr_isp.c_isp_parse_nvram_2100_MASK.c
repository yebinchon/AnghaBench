#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint64_t ;
typedef  void* uint32_t ;
struct TYPE_9__ {int isp_confopts; } ;
typedef  TYPE_1__ ispsoftc_t ;
struct TYPE_10__ {int isp_wwpn_nvram; int isp_wwnn_nvram; void* isp_zfwoptions; void* isp_xfwoptions; int /*<<< orphan*/  isp_fwoptions; int /*<<< orphan*/  isp_loopid; int /*<<< orphan*/  isp_retry_count; int /*<<< orphan*/  isp_retry_delay; int /*<<< orphan*/  isp_maxalloc; } ;
typedef  TYPE_2__ fcparam ;
typedef  int /*<<< orphan*/  DEFAULT_FRAMESIZE ;
typedef  int /*<<< orphan*/  DEFAULT_EXEC_THROTTLE ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 void* FUNC11 (int /*<<< orphan*/ *) ; 
 void* FUNC12 (int /*<<< orphan*/ *) ; 
 int ISP_CFG_OWNEXCTHROTTLE ; 
 int ISP_CFG_OWNFSZ ; 
 int ISP_CFG_OWNLOOPID ; 
 int /*<<< orphan*/  ISP_LOGCONFIG ; 
 int /*<<< orphan*/  ISP_LOGDEBUG0 ; 
 scalar_t__ FUNC13 (TYPE_1__*) ; 
 scalar_t__ FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ ,char*,void*,void*,...) ; 

__attribute__((used)) static void
FUNC16(ispsoftc_t *isp, uint8_t *nvram_data)
{
	fcparam *fcp = FUNC0(isp, 0);
	uint64_t wwn;

	/*
	 * There is NVRAM storage for both Port and Node entities-
	 * but the Node entity appears to be unused on all the cards
	 * I can find. However, we should account for this being set
	 * at some point in the future.
	 *
	 * Qlogic WWNs have an NAA of 2, but usually nothing shows up in
	 * bits 48..60. In the case of the 2202, it appears that they do
	 * use bit 48 to distinguish between the two instances on the card.
	 * The 2204, which I've never seen, *probably* extends this method.
	 */
	wwn = FUNC7(nvram_data);
	if (wwn) {
		FUNC15(isp, ISP_LOGCONFIG, "NVRAM Port WWN 0x%08x%08x",
		    (uint32_t) (wwn >> 32), (uint32_t) (wwn));
		if ((wwn >> 60) == 0) {
			wwn |= (((uint64_t) 2)<< 60);
		}
	}
	fcp->isp_wwpn_nvram = wwn;
	if (FUNC13(isp) || FUNC14(isp)) {
		wwn = FUNC5(nvram_data);
		if (wwn) {
			FUNC15(isp, ISP_LOGCONFIG, "NVRAM Node WWN 0x%08x%08x",
			    (uint32_t) (wwn >> 32),
			    (uint32_t) (wwn));
			if ((wwn >> 60) == 0) {
				wwn |= (((uint64_t) 2)<< 60);
			}
		} else {
			wwn = fcp->isp_wwpn_nvram & ~((uint64_t) 0xfff << 48);
		}
	} else {
		wwn &= ~((uint64_t) 0xfff << 48);
	}
	fcp->isp_wwnn_nvram = wwn;

	fcp->isp_maxalloc = FUNC4(nvram_data);
	if ((isp->isp_confopts & ISP_CFG_OWNFSZ) == 0) {
		DEFAULT_FRAMESIZE(isp) =
		    FUNC3(nvram_data);
	}
	fcp->isp_retry_delay = FUNC9(nvram_data);
	fcp->isp_retry_count = FUNC8(nvram_data);
	if ((isp->isp_confopts & ISP_CFG_OWNLOOPID) == 0) {
		fcp->isp_loopid = FUNC2(nvram_data);
	}
	if ((isp->isp_confopts & ISP_CFG_OWNEXCTHROTTLE) == 0) {
		DEFAULT_EXEC_THROTTLE(isp) =
			FUNC1(nvram_data);
	}
	fcp->isp_fwoptions = FUNC6(nvram_data);
	FUNC15(isp, ISP_LOGDEBUG0,
	    "NVRAM 0x%08x%08x 0x%08x%08x maxalloc %d maxframelen %d",
	    (uint32_t) (fcp->isp_wwnn_nvram >> 32),
	    (uint32_t) fcp->isp_wwnn_nvram,
	    (uint32_t) (fcp->isp_wwpn_nvram >> 32),
	    (uint32_t) fcp->isp_wwpn_nvram,
	    FUNC4(nvram_data),
	    FUNC3(nvram_data));
	FUNC15(isp, ISP_LOGDEBUG0,
	    "execthrottle %d fwoptions 0x%x hardloop %d tov %d",
	    FUNC1(nvram_data),
	    FUNC6(nvram_data),
	    FUNC2(nvram_data),
	    FUNC10(nvram_data));
	fcp->isp_xfwoptions = FUNC11(nvram_data);
	fcp->isp_zfwoptions = FUNC12(nvram_data);
	FUNC15(isp, ISP_LOGDEBUG0, "xfwoptions 0x%x zfw options 0x%x",
	    FUNC11(nvram_data), FUNC12(nvram_data));
}