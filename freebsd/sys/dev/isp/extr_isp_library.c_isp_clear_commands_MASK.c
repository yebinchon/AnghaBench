#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_8__ ;
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {size_t nt_channel; int /*<<< orphan*/  nt_tagval; int /*<<< orphan*/  nt_lun; int /*<<< orphan*/  nt_tgt; void* nt_did; void* nt_sid; int /*<<< orphan*/  nt_nphdl; int /*<<< orphan*/  nt_wwn; TYPE_4__* nt_hba; int /*<<< orphan*/  nt_ncode; } ;
typedef  TYPE_3__ uint8_t ;
typedef  size_t uint32_t ;
struct TYPE_19__ {size_t isp_maxcmds; size_t isp_nchan; TYPE_6__* isp_xflist; } ;
typedef  TYPE_4__ ispsoftc_t ;
typedef  TYPE_3__ isp_notify_t ;
struct TYPE_20__ {int /*<<< orphan*/  handle; int /*<<< orphan*/ * cmd; } ;
typedef  TYPE_6__ isp_hdl_t ;
struct TYPE_16__ {int /*<<< orphan*/  rqs_entry_type; } ;
struct TYPE_21__ {TYPE_1__ ct_header; void* ct_nphdl; int /*<<< orphan*/  ct_syshandle; } ;
typedef  TYPE_7__ ct7_entry_t ;
struct TYPE_17__ {int /*<<< orphan*/  rqs_entry_type; } ;
struct TYPE_22__ {TYPE_2__ ct_header; void* ct_status; int /*<<< orphan*/  ct_syshandle; } ;
typedef  TYPE_8__ ct2_entry_t ;
typedef  int /*<<< orphan*/  XS_T ;

/* Variables and functions */
 void* CT_HBA_RESET ; 
 int /*<<< orphan*/  HBA_BUSRESET ; 
 int /*<<< orphan*/  INI_ANY ; 
 int /*<<< orphan*/  ISPASYNC_TARGET_ACTION ; 
 int /*<<< orphan*/  ISPASYNC_TARGET_NOTIFY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
#define  ISP_HANDLE_CTRL 130 
#define  ISP_HANDLE_INITIATOR 129 
#define  ISP_HANDLE_TARGET 128 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  LUN_ANY ; 
 int /*<<< orphan*/  NIL_HANDLE ; 
 int /*<<< orphan*/  NT_HBA_RESET ; 
 void* PORT_ANY ; 
 int QENTRY_LEN ; 
 int /*<<< orphan*/  RQSTYPE_CTIO2 ; 
 int /*<<< orphan*/  RQSTYPE_CTIO7 ; 
 int /*<<< orphan*/  TAG_ANY ; 
 int /*<<< orphan*/  TGT_ANY ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void
FUNC11(ispsoftc_t *isp)
{
	uint32_t tmp;
	isp_hdl_t *hdp;
#ifdef	ISP_TARGET_MODE
	isp_notify_t notify;
#endif

	for (tmp = 0; isp->isp_xflist && tmp < isp->isp_maxcmds; tmp++) {

		hdp = &isp->isp_xflist[tmp];
		switch (FUNC1(hdp->handle)) {
		case ISP_HANDLE_INITIATOR: {
			XS_T *xs = hdp->cmd;
			if (FUNC6(xs)) {
				FUNC0(isp, xs, hdp->handle);
				FUNC5(xs, FUNC6(xs));
			} else {
				FUNC5(xs, 0);
			}
			FUNC8(isp, hdp->handle);
			FUNC4(xs, HBA_BUSRESET);
			FUNC9(xs);
			break;
		}
#ifdef	ISP_TARGET_MODE
		case ISP_HANDLE_TARGET: {
			uint8_t local[QENTRY_LEN];
			ISP_DMAFREE(isp, hdp->cmd, hdp->handle);
			ISP_MEMZERO(local, QENTRY_LEN);
			if (IS_24XX(isp)) {
				ct7_entry_t *ctio = (ct7_entry_t *) local;
				ctio->ct_syshandle = hdp->handle;
				ctio->ct_nphdl = CT_HBA_RESET;
				ctio->ct_header.rqs_entry_type = RQSTYPE_CTIO7;
			} else {
				ct2_entry_t *ctio = (ct2_entry_t *) local;
				ctio->ct_syshandle = hdp->handle;
				ctio->ct_status = CT_HBA_RESET;
				ctio->ct_header.rqs_entry_type = RQSTYPE_CTIO2;
			}
			isp_async(isp, ISPASYNC_TARGET_ACTION, local);
			break;
		}
#endif
		case ISP_HANDLE_CTRL:
			FUNC10(hdp->cmd);
			FUNC8(isp, hdp->handle);
			break;
		}
	}
#ifdef	ISP_TARGET_MODE
	for (tmp = 0; tmp < isp->isp_nchan; tmp++) {
		ISP_MEMZERO(&notify, sizeof (isp_notify_t));
		notify.nt_ncode = NT_HBA_RESET;
		notify.nt_hba = isp;
		notify.nt_wwn = INI_ANY;
		notify.nt_nphdl = NIL_HANDLE;
		notify.nt_sid = PORT_ANY;
		notify.nt_did = PORT_ANY;
		notify.nt_tgt = TGT_ANY;
		notify.nt_channel = tmp;
		notify.nt_lun = LUN_ANY;
		notify.nt_tagval = TAG_ANY;
		isp_async(isp, ISPASYNC_TARGET_NOTIFY, &notify);
	}
#endif
}