#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int u_long ;
struct thread {int dummy; } ;
struct ifnet {int dummy; } ;
struct cdev {scalar_t__ si_drv1; } ;
struct TYPE_22__ {int /*<<< orphan*/ * buffer; int /*<<< orphan*/  cmd; int /*<<< orphan*/ * size; } ;
typedef  TYPE_2__ qlnx_trace_t ;
typedef  int /*<<< orphan*/  qlnx_storm_stats_dump_t ;
typedef  int /*<<< orphan*/  qlnx_reg_rd_wr_t ;
typedef  int /*<<< orphan*/  qlnx_perm_mac_addr_t ;
typedef  int /*<<< orphan*/  qlnx_pcicfg_rd_wr_t ;
typedef  int /*<<< orphan*/  qlnx_nvram_t ;
typedef  int /*<<< orphan*/  qlnx_lldp_sys_tlvs_t ;
typedef  int /*<<< orphan*/  qlnx_idle_chk_t ;
struct TYPE_21__ {int num_hwfns; } ;
struct TYPE_23__ {TYPE_1__ cdev; struct ifnet* ifp; } ;
typedef  TYPE_3__ qlnx_host_t ;
typedef  int /*<<< orphan*/  qlnx_grcdump_t ;
typedef  int /*<<< orphan*/  qlnx_get_regs_t ;
typedef  int /*<<< orphan*/  qlnx_drvinfo_t ;
typedef  int /*<<< orphan*/  qlnx_dev_setting_t ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
#define  QLNX_DEV_SETTING 142 
#define  QLNX_DRV_INFO 141 
#define  QLNX_GET_REGS 140 
#define  QLNX_GRC_DUMP 139 
#define  QLNX_GRC_DUMP_SIZE 138 
#define  QLNX_IDLE_CHK 137 
#define  QLNX_IDLE_CHK_SIZE 136 
#define  QLNX_MAC_ADDR 135 
#define  QLNX_NVRAM 134 
#define  QLNX_RD_WR_PCICFG 133 
#define  QLNX_RD_WR_REG 132 
#define  QLNX_SET_LLDP_TLVS 131 
#define  QLNX_STORM_STATS 130 
#define  QLNX_TRACE 129 
#define  QLNX_TRACE_SIZE 128 
 int FUNC0 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_3__*,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC11 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC12 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC13 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC15(struct cdev *dev, u_long cmd, caddr_t data, int fflag,
	struct thread *td)
{
	qlnx_host_t	*ha;
	int		rval = 0;
	struct ifnet	*ifp;
	qlnx_trace_t	*trace;
	int		i;

	if ((ha = (qlnx_host_t *)dev->si_drv1) == NULL)
		return ENXIO;

	ifp = ha->ifp;

	switch (cmd) {

	case QLNX_GRC_DUMP_SIZE:
		FUNC3(ha, (qlnx_grcdump_t *)data);
		break;

	case QLNX_GRC_DUMP:
		rval = FUNC2(ha, (qlnx_grcdump_t *)data);
		break;

	case QLNX_IDLE_CHK_SIZE:
		FUNC5(ha, (qlnx_idle_chk_t *)data);
		break;

	case QLNX_IDLE_CHK:
		rval = FUNC4(ha, (qlnx_idle_chk_t *)data);
		break;

	case QLNX_DRV_INFO:
		rval = FUNC1(ha, (qlnx_drvinfo_t *)data);
		break;

	case QLNX_DEV_SETTING:
		rval = FUNC0(ha, (qlnx_dev_setting_t *)data);
		break;

	case QLNX_GET_REGS:
		rval = FUNC6(ha, (qlnx_get_regs_t *)data);
		break;

	case QLNX_NVRAM:
		rval = FUNC10(ha, (qlnx_nvram_t *)data);
		break;

	case QLNX_RD_WR_REG:
		rval = FUNC12(ha, (qlnx_reg_rd_wr_t *)data);
		break;

	case QLNX_RD_WR_PCICFG:
		rval = FUNC11(ha, (qlnx_pcicfg_rd_wr_t *)data);
		break;

	case QLNX_MAC_ADDR:
		FUNC9(ha, (qlnx_perm_mac_addr_t *)data);
		break;

	case QLNX_STORM_STATS:
		FUNC14(ha, (qlnx_storm_stats_dump_t *)data);
		break;

	case QLNX_TRACE_SIZE:
		FUNC8(ha, (qlnx_trace_t *)data);
		break;

	case QLNX_TRACE:
		trace = (qlnx_trace_t *)data;

		for (i = 0; i < ha->cdev.num_hwfns; i++) {

			if (trace->size[i] && trace->cmd && trace->buffer[i])
				rval = FUNC7(ha, i, trace);

			if (rval)
				break;
		}
		break;

#ifdef QLNX_USER_LLDP
	case QLNX_SET_LLDP_TLVS:
		rval = qlnx_set_lldp_tlvx(ha, (qlnx_lldp_sys_tlvs_t *)data);
		break;
#endif /* #ifdef QLNX_USER_LLDP */

	default:
		rval = EINVAL;
		break;
	}

	return (rval);
}