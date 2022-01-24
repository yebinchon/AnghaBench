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
typedef  scalar_t__ uint32_t ;
typedef  int u_long ;
struct thread {int dummy; } ;
struct mpr_usr_command {int dummy; } ;
struct mpr_softc {int /*<<< orphan*/  mpr_mtx; int /*<<< orphan*/  port_enable_complete; } ;
struct mpr_ext_cfg_page_req {int len; int /*<<< orphan*/  buf; } ;
struct mpr_cfg_page_req {int len; int /*<<< orphan*/  buf; } ;
struct cdev {struct mpr_softc* si_drv1; } ;
typedef  int /*<<< orphan*/  mpr_reg_access_t ;
typedef  int /*<<< orphan*/  mpr_pci_info_t ;
typedef  int /*<<< orphan*/  mpr_pass_thru_t ;
typedef  int /*<<< orphan*/  mpr_event_report_t ;
typedef  int /*<<< orphan*/  mpr_event_query_t ;
typedef  int /*<<< orphan*/  mpr_event_enable_t ;
typedef  int /*<<< orphan*/  mpr_diag_action_t ;
typedef  int /*<<< orphan*/  mpr_btdh_mapping_t ;
typedef  int /*<<< orphan*/  mpr_adapter_data_t ;
typedef  int /*<<< orphan*/  MPI2_CONFIG_PAGE_HEADER ;
typedef  int /*<<< orphan*/  MPI2_CONFIG_EXTENDED_PAGE_HEADER ;

/* Variables and functions */
 int ENOIOCTL ; 
#define  MPRIO_MPR_COMMAND 143 
#define  MPRIO_READ_CFG_HEADER 142 
#define  MPRIO_READ_CFG_PAGE 141 
#define  MPRIO_READ_EXT_CFG_HEADER 140 
#define  MPRIO_READ_EXT_CFG_PAGE 139 
#define  MPRIO_WRITE_CFG_PAGE 138 
 int /*<<< orphan*/  MPR_USER ; 
#define  MPTIOCTL_BTDH_MAPPING 137 
#define  MPTIOCTL_DIAG_ACTION 136 
#define  MPTIOCTL_EVENT_ENABLE 135 
#define  MPTIOCTL_EVENT_QUERY 134 
#define  MPTIOCTL_EVENT_REPORT 133 
#define  MPTIOCTL_GET_ADAPTER_DATA 132 
#define  MPTIOCTL_GET_PCI_INFO 131 
#define  MPTIOCTL_PASS_THRU 130 
#define  MPTIOCTL_REG_ACCESS 129 
#define  MPTIOCTL_RESET_ADAPTER 128 
 int /*<<< orphan*/  M_MPRUSER ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  PRIBIO ; 
 int FUNC0 (int /*<<< orphan*/ ,void*,int) ; 
 int FUNC1 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int hz ; 
 void* FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mpr_softc*,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct mpr_softc*) ; 
 int FUNC6 (struct mpr_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct mpr_softc*) ; 
 int FUNC8 (struct mpr_softc*,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct mpr_softc*,struct mpr_usr_command*) ; 
 int FUNC10 (struct mpr_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct mpr_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct mpr_softc*,int /*<<< orphan*/ *) ; 
 int FUNC13 (struct mpr_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct mpr_softc*,int /*<<< orphan*/ *) ; 
 int FUNC15 (struct mpr_softc*,int /*<<< orphan*/ *) ; 
 int FUNC16 (struct mpr_softc*,struct mpr_cfg_page_req*) ; 
 int FUNC17 (struct mpr_softc*,struct mpr_cfg_page_req*,void*) ; 
 int FUNC18 (struct mpr_softc*,struct mpr_ext_cfg_page_req*) ; 
 int FUNC19 (struct mpr_softc*,struct mpr_ext_cfg_page_req*,void*) ; 
 int /*<<< orphan*/  FUNC20 (struct mpr_softc*,int /*<<< orphan*/ *) ; 
 int FUNC21 (struct mpr_softc*,int /*<<< orphan*/ *) ; 
 int FUNC22 (struct mpr_softc*,struct mpr_cfg_page_req*,void*) ; 
 int FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC24 (char*,int) ; 
 scalar_t__ time_uptime ; 

__attribute__((used)) static int
FUNC25(struct cdev *dev, u_long cmd, void *arg, int flag,
    struct thread *td)
{
	struct mpr_softc *sc;
	struct mpr_cfg_page_req *page_req;
	struct mpr_ext_cfg_page_req *ext_page_req;
	void *mpr_page;
	int error, msleep_ret;

	mpr_page = NULL;
	sc = dev->si_drv1;
	page_req = (void *)arg;
	ext_page_req = (void *)arg;

	switch (cmd) {
	case MPRIO_READ_CFG_HEADER:
		FUNC5(sc);
		error = FUNC16(sc, page_req);
		FUNC7(sc);
		break;
	case MPRIO_READ_CFG_PAGE:
		mpr_page = FUNC3(page_req->len, M_MPRUSER, M_WAITOK | M_ZERO);
		error = FUNC0(page_req->buf, mpr_page,
		    sizeof(MPI2_CONFIG_PAGE_HEADER));
		if (error)
			break;
		FUNC5(sc);
		error = FUNC17(sc, page_req, mpr_page);
		FUNC7(sc);
		if (error)
			break;
		error = FUNC1(mpr_page, page_req->buf, page_req->len);
		break;
	case MPRIO_READ_EXT_CFG_HEADER:
		FUNC5(sc);
		error = FUNC18(sc, ext_page_req);
		FUNC7(sc);
		break;
	case MPRIO_READ_EXT_CFG_PAGE:
		mpr_page = FUNC3(ext_page_req->len, M_MPRUSER,
		    M_WAITOK | M_ZERO);
		error = FUNC0(ext_page_req->buf, mpr_page,
		    sizeof(MPI2_CONFIG_EXTENDED_PAGE_HEADER));
		if (error)
			break;
		FUNC5(sc);
		error = FUNC19(sc, ext_page_req, mpr_page);
		FUNC7(sc);
		if (error)
			break;
		error = FUNC1(mpr_page, ext_page_req->buf, ext_page_req->len);
		break;
	case MPRIO_WRITE_CFG_PAGE:
		mpr_page = FUNC3(page_req->len, M_MPRUSER, M_WAITOK|M_ZERO);
		error = FUNC0(page_req->buf, mpr_page, page_req->len);
		if (error)
			break;
		FUNC5(sc);
		error = FUNC22(sc, page_req, mpr_page);
		FUNC7(sc);
		break;
	case MPRIO_MPR_COMMAND:
		error = FUNC9(sc, (struct mpr_usr_command *)arg);
		break;
	case MPTIOCTL_PASS_THRU:
		/*
		 * The user has requested to pass through a command to be
		 * executed by the MPT firmware.  Call our routine which does
		 * this.  Only allow one passthru IOCTL at one time.
		 */
		error = FUNC15(sc, (mpr_pass_thru_t *)arg);
		break;
	case MPTIOCTL_GET_ADAPTER_DATA:
		/*
		 * The user has requested to read adapter data.  Call our
		 * routine which does this.
		 */
		error = 0;
		FUNC14(sc, (mpr_adapter_data_t *)arg);
		break;
	case MPTIOCTL_GET_PCI_INFO:
		/*
		 * The user has requested to read pci info.  Call
		 * our routine which does this.
		 */
		FUNC5(sc);
		error = 0;
		FUNC20(sc, (mpr_pci_info_t *)arg);
		FUNC7(sc);
		break;
	case MPTIOCTL_RESET_ADAPTER:
		FUNC5(sc);
		sc->port_enable_complete = 0;
		uint32_t reinit_start = time_uptime;
		error = FUNC6(sc);
		/* Sleep for 300 second. */
		msleep_ret = FUNC23(&sc->port_enable_complete, &sc->mpr_mtx,
		    PRIBIO, "mpr_porten", 300 * hz);
		FUNC7(sc);
		if (msleep_ret)
			FUNC24("Port Enable did not complete after Diag "
			    "Reset msleep error %d.\n", msleep_ret);
		else
			FUNC4(sc, MPR_USER, "Hard Reset with Port Enable "
			    "completed in %d seconds.\n",
			    (uint32_t)(time_uptime - reinit_start));
		break;
	case MPTIOCTL_DIAG_ACTION:
		/*
		 * The user has done a diag buffer action.  Call our routine
		 * which does this.  Only allow one diag action at one time.
		 */
		FUNC5(sc);
		error = FUNC10(sc, (mpr_diag_action_t *)arg);
		FUNC7(sc);
		break;
	case MPTIOCTL_EVENT_QUERY:
		/*
		 * The user has done an event query. Call our routine which does
		 * this.
		 */
		error = 0;
		FUNC12(sc, (mpr_event_query_t *)arg);
		break;
	case MPTIOCTL_EVENT_ENABLE:
		/*
		 * The user has done an event enable. Call our routine which
		 * does this.
		 */
		error = 0;
		FUNC11(sc, (mpr_event_enable_t *)arg);
		break;
	case MPTIOCTL_EVENT_REPORT:
		/*
		 * The user has done an event report. Call our routine which
		 * does this.
		 */
		error = FUNC13(sc, (mpr_event_report_t *)arg);
		break;
	case MPTIOCTL_REG_ACCESS:
		/*
		 * The user has requested register access.  Call our routine
		 * which does this.
		 */
		FUNC5(sc);
		error = FUNC21(sc, (mpr_reg_access_t *)arg);
		FUNC7(sc);
		break;
	case MPTIOCTL_BTDH_MAPPING:
		/*
		 * The user has requested to translate a bus/target to a
		 * DevHandle or a DevHandle to a bus/target.  Call our routine
		 * which does this.
		 */
		error = FUNC8(sc, (mpr_btdh_mapping_t *)arg);
		break;
	default:
		error = ENOIOCTL;
		break;
	}

	if (mpr_page != NULL)
		FUNC2(mpr_page, M_MPRUSER);

	return (error);
}