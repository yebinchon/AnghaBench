
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_55__ TYPE_9__ ;
typedef struct TYPE_54__ TYPE_8__ ;
typedef struct TYPE_53__ TYPE_7__ ;
typedef struct TYPE_52__ TYPE_6__ ;
typedef struct TYPE_51__ TYPE_5__ ;
typedef struct TYPE_50__ TYPE_4__ ;
typedef struct TYPE_49__ TYPE_3__ ;
typedef struct TYPE_48__ TYPE_2__ ;
typedef struct TYPE_47__ TYPE_1__ ;
typedef struct TYPE_46__ TYPE_14__ ;
typedef struct TYPE_45__ TYPE_13__ ;
typedef struct TYPE_44__ TYPE_12__ ;
typedef struct TYPE_43__ TYPE_11__ ;
typedef struct TYPE_42__ TYPE_10__ ;


typedef int uintmax_t ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_51__ {TYPE_4__* isp_devparam; scalar_t__ update; } ;
typedef TYPE_5__ sdparam ;
struct TYPE_52__ {scalar_t__ isp_state; } ;
typedef TYPE_6__ ispsoftc_t ;
struct TYPE_53__ {int req_task_attribute; int req_tidlo; int req_tidhi; void* req_cdb; int req_time; int req_crn; int req_lun; int req_vpidx; int req_nphdl; } ;
typedef TYPE_7__ ispreqt7_t ;
struct TYPE_54__ {void* req_cdb; int req_time; void* req_scclun; int req_target; } ;
typedef TYPE_8__ ispreqt2e_t ;
struct TYPE_55__ {void* req_cdb; int req_time; void* req_lun_trn; int req_target; void* req_scclun; int req_crn; void* req_flags; } ;
typedef TYPE_9__ ispreqt2_t ;
struct TYPE_49__ {int rqs_entry_count; int rqs_entry_type; } ;
struct TYPE_42__ {int req_target; int req_cdblen; scalar_t__ req_handle; void* req_cdb; int req_time; void* req_lun_trn; void* req_flags; TYPE_3__ req_header; } ;
typedef TYPE_10__ ispreq_t ;
struct TYPE_48__ {int rqs_entry_count; void* rqs_entry_type; } ;
struct TYPE_43__ {int mrk_target; void* mrk_modifier; TYPE_2__ mrk_header; } ;
typedef TYPE_11__ isp_marker_t ;
struct TYPE_47__ {int rqs_entry_count; void* rqs_entry_type; } ;
struct TYPE_44__ {int mrk_vphdl; void* mrk_modifier; TYPE_1__ mrk_header; } ;
typedef TYPE_12__ isp_marker_24xx_t ;
struct TYPE_45__ {scalar_t__ is_target; scalar_t__ state; int portid; int prli_word3; int handle; } ;
typedef TYPE_13__ fcportdb_t ;
struct TYPE_46__ {int role; scalar_t__ isp_loopstate; scalar_t__ fctape_enabled; TYPE_13__* portdb; } ;
typedef TYPE_14__ fcparam ;
typedef int XS_T ;
struct TYPE_50__ {int actv_flags; } ;


 int CAM_EXTLUN_BYTE_SWIZZLE (void*) ;
 int CMD_COMPLETE ;
 int CMD_EAGAIN ;
 int CMD_QUEUED ;
 int CMD_RQLATER ;
 int DPARM_TQING ;
 TYPE_14__* FCPARAM (TYPE_6__*,int) ;
 int FCP_CMND_TASK_ATTR_HEAD ;
 int FCP_CMND_TASK_ATTR_ORDERED ;
 int FCP_CMND_TASK_ATTR_SIMPLE ;
 scalar_t__ FCP_NEXT_CRN (TYPE_6__*,int *,int *) ;
 scalar_t__ FC_PORTDB_STATE_VALID ;
 scalar_t__ FC_PORTDB_STATE_ZOMBIE ;
 int HBA_BOTCH ;
 int HBA_NOERROR ;
 int HBA_REQINVAL ;
 int HBA_SELTIMEOUT ;
 scalar_t__ ISP_CAP_2KLOGIN (TYPE_6__*) ;
 scalar_t__ ISP_CAP_SCCFW (TYPE_6__*) ;
 int ISP_DMASETUP (TYPE_6__*,int *,TYPE_10__*) ;
 int ISP_GET_VPIDX (TYPE_6__*,int) ;
 int ISP_HANDLE_INITIATOR ;
 int ISP_LOGDEBUG0 ;
 int ISP_LOGDEBUG1 ;
 int ISP_LOGDEBUG2 ;
 int ISP_LOGERR ;
 int ISP_LOG_WARN1 ;
 int ISP_MEMCPY (void*,int*,int) ;
 int ISP_MEMZERO (int *,int) ;
 int ISP_ROLE_INITIATOR ;
 scalar_t__ ISP_RUNSTATE ;
 int ISP_SET_SENDMARKER (TYPE_6__*,int,int ) ;
 int ISP_SYNC_REQUEST (TYPE_6__*) ;
 scalar_t__ ISP_TST_SENDMARKER (TYPE_6__*,int) ;
 scalar_t__ IS_24XX (TYPE_6__*) ;
 scalar_t__ IS_FC (TYPE_6__*) ;
 scalar_t__ IS_SCSI (TYPE_6__*) ;
 scalar_t__ LOOP_READY ;
 int MAX_FC_TARG ;
 int PRLI_WD3_RETRY ;
 int QENTRY_LEN ;
 int REQFLAG_HTAG ;
 int REQFLAG_OTAG ;
 void* REQFLAG_STAG ;
 int RQSTYPE_CMDONLY ;
 void* RQSTYPE_MARKER ;
 int RQSTYPE_REQUEST ;
 int RQSTYPE_T2RQS ;
 int RQSTYPE_T7RQS ;
 TYPE_5__* SDPARAM (TYPE_6__*,int) ;
 void* SYNC_ALL ;
 int XS_CDBLEN (int *) ;
 int* XS_CDBP (int *) ;
 int XS_CHANNEL (int *) ;
 int XS_INITERR (int *) ;
 TYPE_6__* XS_ISP (int *) ;
 void* XS_LUN (int *) ;
 int XS_SETERR (int *,int ) ;
 scalar_t__ XS_TAG_P (int *) ;
 void* XS_TAG_TYPE (int *) ;
 int XS_TGT (int *) ;
 int XS_TIME (int *) ;
 scalar_t__ XS_XFRLEN (int *) ;
 int be64enc (int ,int ) ;
 scalar_t__ isp_allocate_handle (TYPE_6__*,int *,int ) ;
 int isp_destroy_handle (TYPE_6__*,scalar_t__) ;
 void* isp_getrqentry (TYPE_6__*) ;
 int isp_prt (TYPE_6__*,int ,char*,...) ;
 int isp_put_marker (TYPE_6__*,TYPE_11__*,void*) ;
 int isp_put_marker_24xx (TYPE_6__*,TYPE_12__*,void*) ;
 int isp_spi_update (TYPE_6__*,int) ;
 int isp_xs_prt (TYPE_6__*,int *,int ,char*,int,long) ;

int
isp_start(XS_T *xs)
{
 ispsoftc_t *isp;
 uint32_t cdblen;
 uint8_t local[QENTRY_LEN];
 ispreq_t *reqp;
 void *cdbp, *qep;
 uint16_t *tptr;
 fcportdb_t *lp;
 int target, dmaresult;

 XS_INITERR(xs);
 isp = XS_ISP(xs);
 if (XS_CDBLEN(xs) > (IS_FC(isp)? 16 : 44) || XS_CDBLEN(xs) == 0) {
  isp_prt(isp, ISP_LOGERR, "unsupported cdb length (%d, CDB[0]=0x%x)", XS_CDBLEN(xs), XS_CDBP(xs)[0] & 0xff);
  XS_SETERR(xs, HBA_REQINVAL);
  return (CMD_COMPLETE);
 }





 target = XS_TGT(xs);
 if (IS_FC(isp)) {
  fcparam *fcp = FCPARAM(isp, XS_CHANNEL(xs));

  if ((fcp->role & ISP_ROLE_INITIATOR) == 0) {
   isp_prt(isp, ISP_LOG_WARN1,
       "%d.%d.%jx I am not an initiator",
       XS_CHANNEL(xs), target, (uintmax_t)XS_LUN(xs));
   XS_SETERR(xs, HBA_SELTIMEOUT);
   return (CMD_COMPLETE);
  }

  if (isp->isp_state != ISP_RUNSTATE) {
   isp_prt(isp, ISP_LOGERR, "Adapter not at RUNSTATE");
   XS_SETERR(xs, HBA_BOTCH);
   return (CMD_COMPLETE);
  }

  isp_prt(isp, ISP_LOGDEBUG2, "XS_TGT(xs)=%d", target);
  lp = &fcp->portdb[target];
  if (target < 0 || target >= MAX_FC_TARG ||
      lp->is_target == 0) {
   XS_SETERR(xs, HBA_SELTIMEOUT);
   return (CMD_COMPLETE);
  }
  if (fcp->isp_loopstate != LOOP_READY) {
   isp_prt(isp, ISP_LOGDEBUG1,
       "%d.%d.%jx loop is not ready",
       XS_CHANNEL(xs), target, (uintmax_t)XS_LUN(xs));
   return (CMD_RQLATER);
  }
  if (lp->state == FC_PORTDB_STATE_ZOMBIE) {
   isp_prt(isp, ISP_LOGDEBUG1,
       "%d.%d.%jx target zombie",
       XS_CHANNEL(xs), target, (uintmax_t)XS_LUN(xs));
   return (CMD_RQLATER);
  }
  if (lp->state != FC_PORTDB_STATE_VALID) {
   isp_prt(isp, ISP_LOGDEBUG1,
       "%d.%d.%jx bad db port state 0x%x",
       XS_CHANNEL(xs), target, (uintmax_t)XS_LUN(xs), lp->state);
   XS_SETERR(xs, HBA_SELTIMEOUT);
   return (CMD_COMPLETE);
  }
 } else {
  sdparam *sdp = SDPARAM(isp, XS_CHANNEL(xs));
  if (isp->isp_state != ISP_RUNSTATE) {
   isp_prt(isp, ISP_LOGERR, "Adapter not at RUNSTATE");
   XS_SETERR(xs, HBA_BOTCH);
   return (CMD_COMPLETE);
  }

  if (sdp->update) {
   isp_spi_update(isp, XS_CHANNEL(xs));
  }
  lp = ((void*)0);
 }

 start_again:

 qep = isp_getrqentry(isp);
 if (qep == ((void*)0)) {
  isp_prt(isp, ISP_LOG_WARN1, "Request Queue Overflow");
  XS_SETERR(xs, HBA_BOTCH);
  return (CMD_EAGAIN);
 }
 XS_SETERR(xs, HBA_NOERROR);






 reqp = (ispreq_t *) local;
 ISP_MEMZERO(local, QENTRY_LEN);
 if (ISP_TST_SENDMARKER(isp, XS_CHANNEL(xs))) {
  if (IS_24XX(isp)) {
   isp_marker_24xx_t *m = (isp_marker_24xx_t *) reqp;
   m->mrk_header.rqs_entry_count = 1;
   m->mrk_header.rqs_entry_type = RQSTYPE_MARKER;
   m->mrk_modifier = SYNC_ALL;
   m->mrk_vphdl = XS_CHANNEL(xs);
   isp_put_marker_24xx(isp, m, qep);
  } else {
   isp_marker_t *m = (isp_marker_t *) reqp;
   m->mrk_header.rqs_entry_count = 1;
   m->mrk_header.rqs_entry_type = RQSTYPE_MARKER;
   m->mrk_target = (XS_CHANNEL(xs) << 7);
   m->mrk_modifier = SYNC_ALL;
   isp_put_marker(isp, m, qep);
  }
  ISP_SYNC_REQUEST(isp);
  ISP_SET_SENDMARKER(isp, XS_CHANNEL(xs), 0);
  goto start_again;
 }

 reqp->req_header.rqs_entry_count = 1;
 if (IS_24XX(isp)) {
  reqp->req_header.rqs_entry_type = RQSTYPE_T7RQS;
 } else if (IS_FC(isp)) {
  reqp->req_header.rqs_entry_type = RQSTYPE_T2RQS;
 } else {
  if (XS_CDBLEN(xs) > 12) {
   reqp->req_header.rqs_entry_type = RQSTYPE_CMDONLY;
  } else {
   reqp->req_header.rqs_entry_type = RQSTYPE_REQUEST;
  }
 }




 if (IS_24XX(isp)) {
  int ttype;
  if (XS_TAG_P(xs)) {
   ttype = XS_TAG_TYPE(xs);
  } else {
   ttype = REQFLAG_STAG;
  }
  if (ttype == REQFLAG_OTAG) {
   ttype = FCP_CMND_TASK_ATTR_ORDERED;
  } else if (ttype == REQFLAG_HTAG) {
   ttype = FCP_CMND_TASK_ATTR_HEAD;
  } else {
   ttype = FCP_CMND_TASK_ATTR_SIMPLE;
  }
  ((ispreqt7_t *)reqp)->req_task_attribute = ttype;
 } else if (IS_FC(isp)) {
  if (XS_TAG_P(xs)) {
   ((ispreqt2_t *)reqp)->req_flags = XS_TAG_TYPE(xs);
  } else {
   ((ispreqt2_t *)reqp)->req_flags = REQFLAG_STAG;
  }
 } else {
  sdparam *sdp = SDPARAM(isp, XS_CHANNEL(xs));
  if ((sdp->isp_devparam[target].actv_flags & DPARM_TQING) && XS_TAG_P(xs)) {
   reqp->req_flags = XS_TAG_TYPE(xs);
  }
 }




 cdblen = XS_CDBLEN(xs);

 if (IS_SCSI(isp)) {
  if (cdblen > sizeof (reqp->req_cdb)) {
   isp_prt(isp, ISP_LOGERR, "Command Length %u too long for this chip", cdblen);
   XS_SETERR(xs, HBA_REQINVAL);
   return (CMD_COMPLETE);
  }
  reqp->req_target = target | (XS_CHANNEL(xs) << 7);
  reqp->req_lun_trn = XS_LUN(xs);
  reqp->req_cdblen = cdblen;
  tptr = &reqp->req_time;
  cdbp = reqp->req_cdb;
 } else if (IS_24XX(isp)) {
  ispreqt7_t *t7 = (ispreqt7_t *)local;

  if (cdblen > sizeof (t7->req_cdb)) {
   isp_prt(isp, ISP_LOGERR, "Command Length %u too long for this chip", cdblen);
   XS_SETERR(xs, HBA_REQINVAL);
   return (CMD_COMPLETE);
  }

  t7->req_nphdl = lp->handle;
  t7->req_tidlo = lp->portid;
  t7->req_tidhi = lp->portid >> 16;
  t7->req_vpidx = ISP_GET_VPIDX(isp, XS_CHANNEL(xs));
  be64enc(t7->req_lun, CAM_EXTLUN_BYTE_SWIZZLE(XS_LUN(xs)));
  if (FCPARAM(isp, XS_CHANNEL(xs))->fctape_enabled && (lp->prli_word3 & PRLI_WD3_RETRY)) {
   if (FCP_NEXT_CRN(isp, &t7->req_crn, xs)) {
    isp_prt(isp, ISP_LOG_WARN1,
        "%d.%d.%jx cannot generate next CRN",
        XS_CHANNEL(xs), target, (uintmax_t)XS_LUN(xs));
    XS_SETERR(xs, HBA_BOTCH);
    return (CMD_EAGAIN);
   }
  }
  tptr = &t7->req_time;
  cdbp = t7->req_cdb;
 } else {
  ispreqt2_t *t2 = (ispreqt2_t *)local;

  if (cdblen > sizeof t2->req_cdb) {
   isp_prt(isp, ISP_LOGERR, "Command Length %u too long for this chip", cdblen);
   XS_SETERR(xs, HBA_REQINVAL);
   return (CMD_COMPLETE);
  }
  if (FCPARAM(isp, XS_CHANNEL(xs))->fctape_enabled && (lp->prli_word3 & PRLI_WD3_RETRY)) {
   if (FCP_NEXT_CRN(isp, &t2->req_crn, xs)) {
    isp_prt(isp, ISP_LOG_WARN1,
        "%d.%d.%jx cannot generate next CRN",
        XS_CHANNEL(xs), target, (uintmax_t)XS_LUN(xs));
    XS_SETERR(xs, HBA_BOTCH);
    return (CMD_EAGAIN);
   }
  }
  if (ISP_CAP_2KLOGIN(isp)) {
   ispreqt2e_t *t2e = (ispreqt2e_t *)local;
   t2e->req_target = lp->handle;
   t2e->req_scclun = XS_LUN(xs);
   tptr = &t2e->req_time;
   cdbp = t2e->req_cdb;
  } else if (ISP_CAP_SCCFW(isp)) {
   t2->req_target = lp->handle;
   t2->req_scclun = XS_LUN(xs);
   tptr = &t2->req_time;
   cdbp = t2->req_cdb;
  } else {
   t2->req_target = lp->handle;
   t2->req_lun_trn = XS_LUN(xs);
   tptr = &t2->req_time;
   cdbp = t2->req_cdb;
  }
 }
 *tptr = XS_TIME(xs);
 ISP_MEMCPY(cdbp, XS_CDBP(xs), cdblen);


 reqp->req_handle = isp_allocate_handle(isp, xs, ISP_HANDLE_INITIATOR);
 if (reqp->req_handle == 0) {
  isp_prt(isp, ISP_LOG_WARN1, "out of xflist pointers");
  XS_SETERR(xs, HBA_BOTCH);
  return (CMD_EAGAIN);
 }







 dmaresult = ISP_DMASETUP(isp, xs, reqp);
 if (dmaresult != CMD_QUEUED) {
  isp_destroy_handle(isp, reqp->req_handle);




  return (dmaresult);
 }
 isp_xs_prt(isp, xs, ISP_LOGDEBUG0, "START cmd cdb[0]=0x%x datalen %ld", XS_CDBP(xs)[0], (long) XS_XFRLEN(xs));
 return (CMD_QUEUED);
}
