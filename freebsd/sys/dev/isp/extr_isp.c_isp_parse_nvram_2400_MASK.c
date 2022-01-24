#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_7__ {int isp_confopts; } ;
typedef  TYPE_1__ ispsoftc_t ;
struct TYPE_8__ {int isp_wwpn_nvram; int isp_wwnn_nvram; int /*<<< orphan*/  isp_zfwoptions; scalar_t__ isp_xfwoptions; scalar_t__ isp_fwoptions; scalar_t__ isp_loopid; scalar_t__ isp_maxalloc; } ;
typedef  TYPE_2__ fcparam ;
typedef  int /*<<< orphan*/  DEFAULT_FRAMESIZE ;
typedef  int /*<<< orphan*/  DEFAULT_EXEC_THROTTLE ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int ISP_CFG_OWNEXCTHROTTLE ; 
 int ISP_CFG_OWNFSZ ; 
 int ISP_CFG_OWNLOOPID ; 
 int /*<<< orphan*/  ISP_LOGDEBUG0 ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void
FUNC11(ispsoftc_t *isp, uint8_t *nvram_data)
{
	fcparam *fcp = FUNC0(isp, 0);
	uint64_t wwn;

	FUNC10(isp, ISP_LOGDEBUG0,
	    "NVRAM 0x%08x%08x 0x%08x%08x exchg_cnt %d maxframelen %d",
	    (uint32_t) (FUNC8(nvram_data) >> 32),
	    (uint32_t) (FUNC8(nvram_data)),
	    (uint32_t) (FUNC9(nvram_data) >> 32),
	    (uint32_t) (FUNC9(nvram_data)),
	    FUNC1(nvram_data),
	    FUNC7(nvram_data));
	FUNC10(isp, ISP_LOGDEBUG0,
	    "NVRAM execthr %d loopid %d fwopt1 0x%x fwopt2 0x%x fwopt3 0x%x",
	    FUNC2(nvram_data),
	    FUNC6(nvram_data),
	    FUNC3(nvram_data),
	    FUNC4(nvram_data),
	    FUNC5(nvram_data));

	wwn = FUNC9(nvram_data);
	fcp->isp_wwpn_nvram = wwn;

	wwn = FUNC8(nvram_data);
	if (wwn) {
		if ((wwn >> 60) != 2 && (wwn >> 60) != 5) {
			wwn = 0;
		}
	}
	if (wwn == 0 && (fcp->isp_wwpn_nvram >> 60) == 2) {
		wwn = fcp->isp_wwpn_nvram;
		wwn &= ~((uint64_t) 0xfff << 48);
	}
	fcp->isp_wwnn_nvram = wwn;

	if (FUNC1(nvram_data)) {
		fcp->isp_maxalloc = FUNC1(nvram_data);
	}
	if ((isp->isp_confopts & ISP_CFG_OWNFSZ) == 0) {
		DEFAULT_FRAMESIZE(isp) =
		    FUNC7(nvram_data);
	}
	if ((isp->isp_confopts & ISP_CFG_OWNLOOPID) == 0) {
		fcp->isp_loopid = FUNC6(nvram_data);
	}
	if ((isp->isp_confopts & ISP_CFG_OWNEXCTHROTTLE) == 0) {
		DEFAULT_EXEC_THROTTLE(isp) =
			FUNC2(nvram_data);
	}
	fcp->isp_fwoptions = FUNC3(nvram_data);
	fcp->isp_xfwoptions = FUNC4(nvram_data);
	fcp->isp_zfwoptions = FUNC5(nvram_data);
}