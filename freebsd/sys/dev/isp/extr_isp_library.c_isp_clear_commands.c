
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_18__ {size_t nt_channel; int nt_tagval; int nt_lun; int nt_tgt; void* nt_did; void* nt_sid; int nt_nphdl; int nt_wwn; TYPE_4__* nt_hba; int nt_ncode; } ;
typedef TYPE_3__ uint8_t ;
typedef size_t uint32_t ;
struct TYPE_19__ {size_t isp_maxcmds; size_t isp_nchan; TYPE_6__* isp_xflist; } ;
typedef TYPE_4__ ispsoftc_t ;
typedef TYPE_3__ isp_notify_t ;
struct TYPE_20__ {int handle; int * cmd; } ;
typedef TYPE_6__ isp_hdl_t ;
struct TYPE_16__ {int rqs_entry_type; } ;
struct TYPE_21__ {TYPE_1__ ct_header; void* ct_nphdl; int ct_syshandle; } ;
typedef TYPE_7__ ct7_entry_t ;
struct TYPE_17__ {int rqs_entry_type; } ;
struct TYPE_22__ {TYPE_2__ ct_header; void* ct_status; int ct_syshandle; } ;
typedef TYPE_8__ ct2_entry_t ;
typedef int XS_T ;


 void* CT_HBA_RESET ;
 int HBA_BUSRESET ;
 int INI_ANY ;
 int ISPASYNC_TARGET_ACTION ;
 int ISPASYNC_TARGET_NOTIFY ;
 int ISP_DMAFREE (TYPE_4__*,int *,int ) ;
 int ISP_H2HT (int ) ;



 int ISP_MEMZERO (TYPE_3__*,int) ;
 int IS_24XX (TYPE_4__*) ;
 int LUN_ANY ;
 int NIL_HANDLE ;
 int NT_HBA_RESET ;
 void* PORT_ANY ;
 int QENTRY_LEN ;
 int RQSTYPE_CTIO2 ;
 int RQSTYPE_CTIO7 ;
 int TAG_ANY ;
 int TGT_ANY ;
 int XS_SETERR (int *,int ) ;
 int XS_SET_RESID (int *,int ) ;
 int XS_XFRLEN (int *) ;
 int isp_async (TYPE_4__*,int ,TYPE_3__*) ;
 int isp_destroy_handle (TYPE_4__*,int ) ;
 int isp_done (int *) ;
 int wakeup (int *) ;

void
isp_clear_commands(ispsoftc_t *isp)
{
 uint32_t tmp;
 isp_hdl_t *hdp;




 for (tmp = 0; isp->isp_xflist && tmp < isp->isp_maxcmds; tmp++) {

  hdp = &isp->isp_xflist[tmp];
  switch (ISP_H2HT(hdp->handle)) {
  case 129: {
   XS_T *xs = hdp->cmd;
   if (XS_XFRLEN(xs)) {
    ISP_DMAFREE(isp, xs, hdp->handle);
    XS_SET_RESID(xs, XS_XFRLEN(xs));
   } else {
    XS_SET_RESID(xs, 0);
   }
   isp_destroy_handle(isp, hdp->handle);
   XS_SETERR(xs, HBA_BUSRESET);
   isp_done(xs);
   break;
  }
  case 130:
   wakeup(hdp->cmd);
   isp_destroy_handle(isp, hdp->handle);
   break;
  }
 }
}
