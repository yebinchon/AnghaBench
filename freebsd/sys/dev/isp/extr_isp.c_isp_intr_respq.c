
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_56__ TYPE_8__ ;
typedef struct TYPE_55__ TYPE_7__ ;
typedef struct TYPE_54__ TYPE_6__ ;
typedef struct TYPE_53__ TYPE_5__ ;
typedef struct TYPE_52__ TYPE_4__ ;
typedef struct TYPE_51__ TYPE_3__ ;
typedef struct TYPE_50__ TYPE_2__ ;
typedef struct TYPE_49__ TYPE_25__ ;
typedef struct TYPE_48__ TYPE_1__ ;


typedef int uintmax_t ;
typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int u_long ;
struct TYPE_51__ {int update; TYPE_2__* isp_devparam; } ;
typedef TYPE_3__ sdparam ;
typedef int lb ;
struct TYPE_49__ {int rqs_entry_type; int rqs_flags; } ;
struct TYPE_52__ {int req_scsi_status; int req_completion_status; int req_status_flags; int req_state_flags; scalar_t__ req_resid; scalar_t__ req_response_len; scalar_t__ req_sense_len; int req_handle; scalar_t__* req_sense_data; scalar_t__* req_response; TYPE_25__ req_header; } ;
typedef TYPE_4__ ispstatusreq_t ;
struct TYPE_53__ {int req_sense_data; } ;
typedef TYPE_5__ ispstatus_cont_t ;
struct TYPE_54__ {scalar_t__ isp_state; int isp_revision; scalar_t__ isp_resodx; int isp_dblev; int isp_respoutrp; int isp_result; scalar_t__ isp_residx; int isp_respinrp; } ;
typedef TYPE_6__ ispsoftc_t ;
typedef int isphdr_t ;
struct TYPE_48__ {int rqs_seqno; } ;
struct TYPE_55__ {int * req_handles; TYPE_1__ req_header; } ;
typedef TYPE_7__ isp_rio1_t ;
struct TYPE_56__ {int req_scsi_status; int req_completion_status; scalar_t__ req_resid; scalar_t__ req_response_len; scalar_t__ req_sense_len; scalar_t__* req_rsp_sense; } ;
typedef TYPE_8__ isp24xx_statusreq_t ;
typedef int XS_T ;
struct TYPE_50__ {int dev_refresh; } ;


 size_t FCP_RSPNS_CODE_OFFSET ;
 int HBA_BOTCH ;
 int HBA_BUSRESET ;
 scalar_t__ HBA_NOERROR ;
 int HBA_TGTBSY ;
 int ISP_DMAFREE (TYPE_6__*,int *,int ) ;
 int ISP_LOGDEBUG0 ;
 int ISP_LOGDEBUG1 ;
 int ISP_LOGDEBUG2 ;
 int ISP_LOGERR ;
 int ISP_LOGINFO ;
 int ISP_LOGWARN ;
 int ISP_LOG_CWARN ;
 int ISP_LOG_WARN1 ;
 int ISP_MEMZERO (int *,int) ;
 scalar_t__ ISP_NXT_QENTRY (scalar_t__,int ) ;
 scalar_t__ ISP_QUEUE_ENTRY (int ,scalar_t__) ;
 scalar_t__ ISP_READ (TYPE_6__*,int ) ;
 scalar_t__ ISP_RUNSTATE ;
 int ISP_SET_SENDMARKER (TYPE_6__*,int,int) ;
 int ISP_SNPRINTF (char*,int,char*,scalar_t__) ;
 int ISP_WRITE (TYPE_6__*,int ,scalar_t__) ;
 scalar_t__ IS_2100 (TYPE_6__*) ;
 scalar_t__ IS_2300 (TYPE_6__*) ;
 scalar_t__ IS_24XX (TYPE_6__*) ;
 scalar_t__ IS_FC (TYPE_6__*) ;
 scalar_t__ IS_SCSI (TYPE_6__*) ;
 int MEMORYBARRIER (TYPE_6__*,int ,scalar_t__,int,int) ;
 int QENTRY_LEN ;
 int RESULT_QUEUE_LEN (TYPE_6__*) ;
 scalar_t__ RQCS_ABORTED ;
 scalar_t__ RQCS_RESET_OCCURRED ;
 int RQCS_RESID ;
 int RQCS_RV ;
 int RQCS_SV ;
 int RQSFLAG_BADCOUNT ;
 int RQSFLAG_BADHEADER ;
 int RQSFLAG_BADORDER ;
 int RQSFLAG_BADPACKET ;
 int RQSFLAG_CONTINUATION ;
 int RQSFLAG_FULL ;
 int RQSFLAG_MASK ;
 int RQSF_GOT_SENSE ;
 int RQSF_GOT_STATUS ;
 int RQSF_XFER_COMPLETE ;
 int RQSTF_BUS_RESET ;
 int RQSTF_NEGOTIATION ;
 int RQSTYPE_RESPONSE ;
 int RQSTYPE_RIO1 ;
 int RQSTYPE_RIO2 ;
 int RQSTYPE_STATUS_CONT ;
 int SCSI_BUSY ;
 TYPE_3__* SDPARAM (TYPE_6__*,int) ;
 int SYNC_RESULT ;
 int* XS_CDBP (int *) ;
 int XS_CHANNEL (int *) ;
 scalar_t__ XS_ERR (int *) ;
 scalar_t__ XS_GET_RESID (int *) ;
 scalar_t__ XS_LUN (int *) ;
 scalar_t__ XS_NOERR (int *) ;
 int XS_SAVE_SENSE (int *,scalar_t__*,scalar_t__) ;
 int XS_SENSE_APPEND (int *,int ,int) ;
 int XS_SETERR (int *,int ) ;
 int XS_SET_RESID (int *,scalar_t__) ;
 int* XS_STSP (int *) ;
 int XS_TGT (int *) ;
 scalar_t__ XS_XFRLEN (int *) ;
 int isp_destroy_handle (TYPE_6__*,int ) ;
 int isp_done (int *) ;
 int isp_fastpost_complete (TYPE_6__*,int ) ;
 int * isp_find_xs (TYPE_6__*,int ) ;
 int isp_get_24xx_response (TYPE_6__*,TYPE_8__*,TYPE_8__*) ;
 int isp_get_cont_response (TYPE_6__*,TYPE_5__*,TYPE_5__*) ;
 int isp_get_hdr (TYPE_6__*,int *,TYPE_25__*) ;
 int isp_get_response (TYPE_6__*,TYPE_4__*,TYPE_4__*) ;
 int isp_get_rio1 (TYPE_6__*,TYPE_7__*,TYPE_7__*) ;
 scalar_t__ isp_handle_other_response (TYPE_6__*,int,int *,scalar_t__*) ;
 int isp_parse_status (TYPE_6__*,TYPE_4__*,int *,scalar_t__*) ;
 int isp_parse_status_24xx (TYPE_6__*,TYPE_8__*,int *,scalar_t__*) ;
 int isp_print_qentry (TYPE_6__*,char*,scalar_t__,int *) ;
 int isp_prt (TYPE_6__*,int,char*,...) ;
 int isp_xs_prt (TYPE_6__*,int *,int ,char*,scalar_t__,char const*,int) ;
 int min (int,int) ;
 char* notresp ;

void
isp_intr_respq(ispsoftc_t *isp)
{
 XS_T *xs, *cont_xs;
 uint8_t qe[QENTRY_LEN];
 ispstatusreq_t *sp = (ispstatusreq_t *)qe;
 isp24xx_statusreq_t *sp2 = (isp24xx_statusreq_t *)qe;
 isphdr_t *hp;
 uint8_t *resp, *snsp;
 int buddaboom, completion_status, cont = 0, etype, i;
 int req_status_flags, req_state_flags, scsi_status;
 uint32_t iptr, junk, cptr, optr, rlen, slen, sptr, totslen, resid;




 if (isp->isp_state != ISP_RUNSTATE) {
  isp_prt(isp, ISP_LOGINFO, "respq interrupt when not ready");
  return;
 }

 iptr = ISP_READ(isp, isp->isp_respinrp);

 if (IS_2100(isp) || (IS_2300(isp) && isp->isp_revision < 2)) {
  do {
   junk = iptr;
   iptr = ISP_READ(isp, isp->isp_respinrp);
  } while (junk != iptr);
 }
 isp->isp_residx = iptr;

 optr = isp->isp_resodx;
 while (optr != iptr) {
  sptr = cptr = optr;
  hp = (isphdr_t *) ISP_QUEUE_ENTRY(isp->isp_result, cptr);
  optr = ISP_NXT_QENTRY(optr, RESULT_QUEUE_LEN(isp));




  MEMORYBARRIER(isp, SYNC_RESULT, cptr, QENTRY_LEN, -1);
  if (isp->isp_dblev & ISP_LOGDEBUG1)
   isp_print_qentry(isp, "Response Queue Entry", cptr, hp);
  isp_get_hdr(isp, hp, &sp->req_header);
  etype = sp->req_header.rqs_entry_type;


  if (cont > 0 && etype != RQSTYPE_STATUS_CONT) {
   cont = 0;
   isp_done(cont_xs);
  }

  if (IS_24XX(isp) && etype == RQSTYPE_RESPONSE) {
   isp_get_24xx_response(isp, (isp24xx_statusreq_t *)hp, sp2);
   scsi_status = sp2->req_scsi_status;
   completion_status = sp2->req_completion_status;
   req_status_flags = 0;
   if ((scsi_status & 0xff) != 0)
    req_state_flags = RQSF_GOT_STATUS;
   else
    req_state_flags = 0;
   resid = sp2->req_resid;
  } else if (etype == RQSTYPE_RESPONSE) {
   isp_get_response(isp, (ispstatusreq_t *) hp, sp);
   scsi_status = sp->req_scsi_status;
   completion_status = sp->req_completion_status;
   req_status_flags = sp->req_status_flags;
   req_state_flags = sp->req_state_flags;
   resid = sp->req_resid;
  } else if (etype == RQSTYPE_RIO1) {
   isp_rio1_t *rio = (isp_rio1_t *) qe;
   isp_get_rio1(isp, (isp_rio1_t *) hp, rio);
   for (i = 0; i < rio->req_header.rqs_seqno; i++) {
    isp_fastpost_complete(isp, rio->req_handles[i]);
   }
   ISP_MEMZERO(hp, QENTRY_LEN);
   continue;
  } else if (etype == RQSTYPE_RIO2) {
   isp_prt(isp, ISP_LOGERR, "dropping RIO2 response");
   ISP_MEMZERO(hp, QENTRY_LEN);
   continue;
  } else if (etype == RQSTYPE_STATUS_CONT) {
   ispstatus_cont_t *scp = (ispstatus_cont_t *)qe;
   isp_get_cont_response(isp, (ispstatus_cont_t *)hp, scp);
   if (cont > 0) {
    i = min(cont, sizeof(scp->req_sense_data));
    XS_SENSE_APPEND(cont_xs, scp->req_sense_data, i);
    cont -= i;
    if (cont == 0) {
     isp_done(cont_xs);
    } else {
     isp_prt(isp, ISP_LOGDEBUG0|ISP_LOG_CWARN,
         "Expecting Status Continuations for %u bytes",
         cont);
    }
   } else {
    isp_prt(isp, ISP_LOG_WARN1, "Ignored Continuation Response");
   }
   ISP_MEMZERO(hp, QENTRY_LEN);
   continue;
  } else if (isp_handle_other_response(isp, etype, hp, &cptr)) {

   while (sptr != cptr) {
    ISP_MEMZERO(hp, QENTRY_LEN);
    sptr = ISP_NXT_QENTRY(sptr, RESULT_QUEUE_LEN(isp));
    hp = (isphdr_t *)ISP_QUEUE_ENTRY(isp->isp_result, sptr);
   }
   ISP_MEMZERO(hp, QENTRY_LEN);
   optr = ISP_NXT_QENTRY(cptr, RESULT_QUEUE_LEN(isp));
   continue;
  } else {

   isp_prt(isp, ISP_LOGERR, notresp, etype, cptr, optr);
   ISP_MEMZERO(hp, QENTRY_LEN);
   continue;
  }

  buddaboom = 0;
  if (sp->req_header.rqs_flags & RQSFLAG_MASK) {
   if (sp->req_header.rqs_flags & RQSFLAG_CONTINUATION) {
    isp_print_qentry(isp, "unexpected continuation segment",
        cptr, hp);
    continue;
   }
   if (sp->req_header.rqs_flags & RQSFLAG_FULL) {
    isp_prt(isp, ISP_LOG_WARN1, "internal queues full");



   }
   if (sp->req_header.rqs_flags & RQSFLAG_BADHEADER) {
    isp_print_qentry(isp, "bad header flag",
        cptr, hp);
    buddaboom++;
   }
   if (sp->req_header.rqs_flags & RQSFLAG_BADPACKET) {
    isp_print_qentry(isp, "bad request packet",
        cptr, hp);
    buddaboom++;
   }
   if (sp->req_header.rqs_flags & RQSFLAG_BADCOUNT) {
    isp_print_qentry(isp, "invalid entry count",
        cptr, hp);
    buddaboom++;
   }
   if (sp->req_header.rqs_flags & RQSFLAG_BADORDER) {
    isp_print_qentry(isp, "invalid IOCB ordering",
        cptr, hp);
    continue;
   }
  }

  xs = isp_find_xs(isp, sp->req_handle);
  if (xs == ((void*)0)) {
   uint8_t ts = completion_status & 0xff;




   if (etype != RQSTYPE_RESPONSE) {
    isp_prt(isp, ISP_LOGERR, "cannot find handle 0x%x (type 0x%x)", sp->req_handle, etype);
   } else if (ts != RQCS_ABORTED && ts != RQCS_RESET_OCCURRED) {
    isp_prt(isp, ISP_LOGERR, "cannot find handle 0x%x (status 0x%x)", sp->req_handle, ts);
   }
   ISP_MEMZERO(hp, QENTRY_LEN);
   continue;
  }
  if (req_status_flags & RQSTF_BUS_RESET) {
   isp_prt(isp, ISP_LOG_WARN1, "%d.%d.%jx bus was reset",
       XS_CHANNEL(xs), XS_TGT(xs), (uintmax_t)XS_LUN(xs));
   XS_SETERR(xs, HBA_BUSRESET);
   ISP_SET_SENDMARKER(isp, XS_CHANNEL(xs), 1);
  }
  if (buddaboom) {
   isp_prt(isp, ISP_LOG_WARN1, "%d.%d.%jx buddaboom",
       XS_CHANNEL(xs), XS_TGT(xs), (uintmax_t)XS_LUN(xs));
   XS_SETERR(xs, HBA_BOTCH);
  }

  resp = snsp = ((void*)0);
  rlen = slen = totslen = 0;
  if (IS_24XX(isp) && (scsi_status & (RQCS_RV|RQCS_SV)) != 0) {
   resp = sp2->req_rsp_sense;
   rlen = sp2->req_response_len;
  } else if (IS_FC(isp) && (scsi_status & RQCS_RV) != 0) {
   resp = sp->req_response;
   rlen = sp->req_response_len;
  }
  if (IS_FC(isp) && (scsi_status & RQCS_SV) != 0) {





   req_state_flags |= RQSF_GOT_STATUS|RQSF_GOT_SENSE;
   if (IS_24XX(isp)) {
    snsp = sp2->req_rsp_sense;
    snsp += rlen;
    totslen = sp2->req_sense_len;
    slen = sizeof(sp2->req_rsp_sense) - rlen;
   } else {
    snsp = sp->req_sense_data;
    totslen = sp->req_sense_len;
    slen = sizeof(sp->req_sense_data);
   }
  } else if (IS_SCSI(isp) && (req_state_flags & RQSF_GOT_SENSE)) {
   snsp = sp->req_sense_data;
   totslen = sp->req_sense_len;
   slen = sizeof (sp->req_sense_data);
  }
  if (slen > totslen)
   slen = totslen;
  if (req_state_flags & RQSF_GOT_STATUS)
   *XS_STSP(xs) = scsi_status & 0xff;

  if (rlen >= 4 && resp[FCP_RSPNS_CODE_OFFSET] != 0) {
   const char *ptr;
   char lb[64];
   const char *rnames[10] = {
       "Task Management function complete",
       "FCP_DATA length different than FCP_BURST_LEN",
       "FCP_CMND fields invalid",
       "FCP_DATA parameter mismatch with FCP_DATA_RO",
       "Task Management function rejected",
       "Task Management function failed",
       ((void*)0),
       ((void*)0),
       "Task Management function succeeded",
       "Task Management function incorrect logical unit number",
   };
   uint8_t code = resp[FCP_RSPNS_CODE_OFFSET];
   if (code >= 10 || rnames[code] == ((void*)0)) {
    ISP_SNPRINTF(lb, sizeof(lb),
        "Unknown FCP Response Code 0x%x", code);
    ptr = lb;
   } else {
    ptr = rnames[code];
   }
   isp_xs_prt(isp, xs, ISP_LOGWARN,
       "FCP RESPONSE, LENGTH %u: %s CDB0=0x%02x",
       rlen, ptr, XS_CDBP(xs)[0] & 0xff);
   if (code != 0 && code != 8)
    XS_SETERR(xs, HBA_BOTCH);
  }
  if (IS_24XX(isp))
   isp_parse_status_24xx(isp, sp2, xs, &resid);
  else
   isp_parse_status(isp, sp, xs, &resid);
  if ((XS_NOERR(xs) || XS_ERR(xs) == HBA_NOERROR) &&
      (*XS_STSP(xs) == SCSI_BUSY))
   XS_SETERR(xs, HBA_TGTBSY);
  if (IS_SCSI(isp)) {
   XS_SET_RESID(xs, resid);





   if (req_status_flags & RQSTF_NEGOTIATION) {
    int t = XS_TGT(xs);
    sdparam *sdp = SDPARAM(isp, XS_CHANNEL(xs));
    sdp->isp_devparam[t].dev_refresh = 1;
    sdp->update = 1;
   }
  } else {
   if (req_status_flags & RQSF_XFER_COMPLETE) {
    XS_SET_RESID(xs, 0);
   } else if (scsi_status & RQCS_RESID) {
    XS_SET_RESID(xs, resid);
   } else {
    XS_SET_RESID(xs, 0);
   }
  }
  if (slen > 0) {
   XS_SAVE_SENSE(xs, snsp, slen);
   if (totslen > slen) {
    cont = totslen - slen;
    cont_xs = xs;
    isp_prt(isp, ISP_LOGDEBUG0|ISP_LOG_CWARN,
        "Expecting Status Continuations for %u bytes",
        cont);
   }
  }
  isp_prt(isp, ISP_LOGDEBUG2, "asked for %lu got raw resid %lu settled for %lu",
      (u_long)XS_XFRLEN(xs), (u_long)resid, (u_long)XS_GET_RESID(xs));

  if (XS_XFRLEN(xs))
   ISP_DMAFREE(isp, xs, sp->req_handle);
  isp_destroy_handle(isp, sp->req_handle);

  ISP_MEMZERO(hp, QENTRY_LEN);


  if (cont == 0)
   isp_done(xs);
 }


 if (cont > 0)
  isp_done(cont_xs);


 if (optr != isp->isp_resodx) {
  ISP_WRITE(isp, isp->isp_respoutrp, optr);
  isp->isp_resodx = optr;
 }
}
