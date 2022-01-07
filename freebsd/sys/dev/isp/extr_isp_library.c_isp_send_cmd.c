
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_57__ TYPE_9__ ;
typedef struct TYPE_56__ TYPE_8__ ;
typedef struct TYPE_55__ TYPE_7__ ;
typedef struct TYPE_54__ TYPE_6__ ;
typedef struct TYPE_53__ TYPE_5__ ;
typedef struct TYPE_52__ TYPE_4__ ;
typedef struct TYPE_51__ TYPE_3__ ;
typedef struct TYPE_50__ TYPE_2__ ;
typedef struct TYPE_49__ TYPE_1__ ;
typedef struct TYPE_48__ TYPE_18__ ;
typedef struct TYPE_47__ TYPE_17__ ;
typedef struct TYPE_46__ TYPE_16__ ;
typedef struct TYPE_45__ TYPE_15__ ;
typedef struct TYPE_44__ TYPE_14__ ;
typedef struct TYPE_43__ TYPE_13__ ;
typedef struct TYPE_42__ TYPE_12__ ;
typedef struct TYPE_41__ TYPE_11__ ;
typedef struct TYPE_40__ TYPE_10__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_56__ {scalar_t__ isp_reqidx; scalar_t__ isp_reqodx; int isp_dblev; int isp_rquest; int isp_rqstoutrp; } ;
typedef TYPE_8__ ispsoftc_t ;
struct TYPE_57__ {scalar_t__ req_dl; scalar_t__ req_seg_count; scalar_t__ req_alen_datadir; int req_dataseg; } ;
typedef TYPE_9__ ispreqt7_t ;
struct TYPE_40__ {scalar_t__ req_flags; scalar_t__ req_totalcnt; scalar_t__ req_seg_count; int * req_dataseg; } ;
typedef TYPE_10__ ispreqt3_t ;
struct TYPE_41__ {scalar_t__ req_flags; scalar_t__ req_totalcnt; scalar_t__ req_seg_count; int * req_dataseg; } ;
typedef TYPE_11__ ispreqt2_t ;
struct TYPE_42__ {scalar_t__ req_flags; scalar_t__ req_seg_count; int * req_dataseg; } ;
typedef TYPE_12__ ispreq_t ;
struct TYPE_43__ {int rqs_entry_type; int rqs_entry_count; } ;
typedef TYPE_13__ isphdr_t ;
struct TYPE_44__ {scalar_t__ req_seg_count; } ;
typedef TYPE_14__ ispextreq_t ;
typedef int ispds_t ;
typedef int ispds64_t ;
struct TYPE_50__ {int rqs_entry_count; int rqs_entry_type; } ;
struct TYPE_45__ {int * req_dataseg; TYPE_2__ req_header; } ;
typedef TYPE_15__ ispcontreq_t ;
struct TYPE_49__ {int rqs_entry_count; int rqs_entry_type; } ;
struct TYPE_46__ {int * req_dataseg; TYPE_1__ req_header; } ;
typedef TYPE_16__ ispcontreq64_t ;
typedef scalar_t__ isp_ddir_t ;
struct TYPE_54__ {int ds; } ;
struct TYPE_55__ {TYPE_6__ m0; } ;
struct TYPE_47__ {int ct_flags; int ct_seg_count; TYPE_7__ rsp; } ;
typedef TYPE_17__ ct7_entry_t ;
struct TYPE_51__ {int * ct_dataseg64; int * ct_dataseg; } ;
struct TYPE_52__ {TYPE_3__ u; } ;
struct TYPE_53__ {TYPE_4__ m0; } ;
struct TYPE_48__ {int ct_flags; int ct_seg_count; TYPE_5__ rsp; } ;
typedef TYPE_18__ ct2_entry_t ;


 int CMD_COMPLETE ;
 int CMD_EAGAIN ;
 int CMD_QUEUED ;
 int CT2_FLAG_MODE2 ;
 scalar_t__ CT2_NO_DATA ;
 int CT7_FLAG_MODE2 ;
 scalar_t__ FCP_CMND_DATA_READ ;
 scalar_t__ FCP_CMND_DATA_WRITE ;
 int ISP_ADD_REQUEST (TYPE_8__*,scalar_t__) ;
 int ISP_CAP_2KLOGIN (TYPE_8__*) ;
 scalar_t__ ISP_CDSEG ;
 scalar_t__ ISP_CDSEG64 ;
 int ISP_LOGDEBUG1 ;
 int ISP_MEMZERO (int*,int) ;
 scalar_t__ ISP_NOXFR ;
 scalar_t__ ISP_NXT_QENTRY (scalar_t__,int ) ;
 void* ISP_QUEUE_ENTRY (int ,scalar_t__) ;
 scalar_t__ ISP_READ (TYPE_8__*,int ) ;
 scalar_t__ ISP_RQDSEG ;
 scalar_t__ ISP_RQDSEG_T2 ;
 scalar_t__ ISP_RQDSEG_T3 ;
 scalar_t__ ISP_TO_DEVICE ;
 int QENTRY_LEN ;
 scalar_t__ REQFLAG_DATA_IN ;
 scalar_t__ REQFLAG_DATA_OUT ;

 int RQSTYPE_A64_CONT ;




 int RQSTYPE_DATASEG ;




 int RQUEST_QUEUE_LEN (TYPE_8__*) ;
 int XS_GET_DMA64_SEG (int ,void*,int ) ;
 int XS_GET_DMA_SEG (int ,void*,int ) ;
 int XS_NEED_DMA64_SEG (void*,scalar_t__) ;
 void* isp_getrqentry (TYPE_8__*) ;
 int isp_print_bytes (TYPE_8__*,char*,int,void*) ;
 int isp_put_cont64_req (TYPE_8__*,TYPE_16__*,void*) ;
 int isp_put_cont_req (TYPE_8__*,TYPE_15__*,void*) ;
 int isp_put_ctio2 (TYPE_8__*,void*,void*) ;
 int isp_put_ctio2e (TYPE_8__*,void*,void*) ;
 int isp_put_ctio7 (TYPE_8__*,void*,void*) ;
 int isp_put_extended_request (TYPE_8__*,void*,void*) ;
 int isp_put_request (TYPE_8__*,void*,void*) ;
 int isp_put_request_t2 (TYPE_8__*,void*,void*) ;
 int isp_put_request_t2e (TYPE_8__*,void*,void*) ;
 int isp_put_request_t3 (TYPE_8__*,void*,void*) ;
 int isp_put_request_t3e (TYPE_8__*,void*,void*) ;
 int isp_put_request_t7 (TYPE_8__*,void*,void*) ;

int
isp_send_cmd(ispsoftc_t *isp, void *fqe, void *segp, uint32_t nsegs, uint32_t totalcnt, isp_ddir_t ddir, ispds64_t *ecmd)
{
 uint8_t storage[QENTRY_LEN];
 uint8_t type, nqe, need64;
 uint32_t seg, seglim, nxt, nxtnxt, ddf;
 ispds_t *dsp = ((void*)0);
 ispds64_t *dsp64 = ((void*)0);
 void *qe0, *qe1;

 qe0 = isp_getrqentry(isp);
 if (qe0 == ((void*)0)) {
  return (CMD_EAGAIN);
 }
 nxt = ISP_NXT_QENTRY(isp->isp_reqidx, RQUEST_QUEUE_LEN(isp));

 type = ((isphdr_t *)fqe)->rqs_entry_type;
 nqe = 1;




 if (ddir == ISP_NOXFR) {
  if (type == 130 || type == 129) {
   ddf = CT2_NO_DATA;
  } else {
   ddf = 0;
  }
  goto copy_and_sync;
 }

 need64 = 0;
 for (seg = 0; seg < nsegs; seg++)
  need64 |= XS_NEED_DMA64_SEG(segp, seg);
 if (need64) {
  if (type == 130)
   ((isphdr_t *)fqe)->rqs_entry_type = type = 129;
  else if (type == 131)
   ((isphdr_t *)fqe)->rqs_entry_type = type = 136;
  else if (type == 134)
   ((isphdr_t *)fqe)->rqs_entry_type = type = 133;
 }





 switch (type) {
 case 131:
  ddf = (ddir == ISP_TO_DEVICE)? REQFLAG_DATA_OUT : REQFLAG_DATA_IN;
  dsp = ((ispreq_t *)fqe)->req_dataseg;
  seglim = ISP_RQDSEG;
  break;
 case 135:
  ddf = (ddir == ISP_TO_DEVICE)? REQFLAG_DATA_OUT : REQFLAG_DATA_IN;
  seglim = 0;
  break;
 case 130:
  ddf = (ddir == ISP_TO_DEVICE)? REQFLAG_DATA_OUT : REQFLAG_DATA_IN;
  dsp = ((ispreqt2_t *)fqe)->req_dataseg;
  seglim = ISP_RQDSEG_T2;
  break;
 case 136:
  ddf = (ddir == ISP_TO_DEVICE)? REQFLAG_DATA_OUT : REQFLAG_DATA_IN;
  dsp64 = ((ispreqt3_t *)fqe)->req_dataseg;
  seglim = ISP_RQDSEG_T3;
  break;
 case 129:
  ddf = (ddir == ISP_TO_DEVICE)? REQFLAG_DATA_OUT : REQFLAG_DATA_IN;
  dsp64 = ((ispreqt3_t *)fqe)->req_dataseg;
  seglim = ISP_RQDSEG_T3;
  break;
 case 128:
  ddf = (ddir == ISP_TO_DEVICE)? FCP_CMND_DATA_WRITE : FCP_CMND_DATA_READ;
  dsp64 = &((ispreqt7_t *)fqe)->req_dataseg;
  seglim = 1;
  break;
 default:
  return (CMD_COMPLETE);
 }
 if (seglim > nsegs)
  seglim = nsegs;
 seg = 0;
 while (seg < seglim) {
  if (dsp64) {
   XS_GET_DMA64_SEG(dsp64++, segp, seg++);
  } else {
   XS_GET_DMA_SEG(dsp++, segp, seg++);
  }
 }




 while (seg < nsegs) {
  nxtnxt = ISP_NXT_QENTRY(nxt, RQUEST_QUEUE_LEN(isp));
  if (nxtnxt == isp->isp_reqodx) {
   isp->isp_reqodx = ISP_READ(isp, isp->isp_rqstoutrp);
   if (nxtnxt == isp->isp_reqodx)
    return (CMD_EAGAIN);
  }
  ISP_MEMZERO(storage, QENTRY_LEN);
  qe1 = ISP_QUEUE_ENTRY(isp->isp_rquest, nxt);
  nxt = nxtnxt;
  if (dsp64) {
   ispcontreq64_t *crq = (ispcontreq64_t *) storage;
   seglim = ISP_CDSEG64;
   crq->req_header.rqs_entry_type = RQSTYPE_A64_CONT;
   crq->req_header.rqs_entry_count = 1;
   dsp64 = crq->req_dataseg;
  } else {
   ispcontreq_t *crq = (ispcontreq_t *) storage;
   seglim = ISP_CDSEG;
   crq->req_header.rqs_entry_type = RQSTYPE_DATASEG;
   crq->req_header.rqs_entry_count = 1;
   dsp = crq->req_dataseg;
  }
  seglim += seg;
  if (seglim > nsegs)
   seglim = nsegs;
  while (seg < seglim) {
   if (dsp64) {
    XS_GET_DMA64_SEG(dsp64++, segp, seg++);
   } else {
    XS_GET_DMA_SEG(dsp++, segp, seg++);
   }
  }
  if (dsp64) {
   isp_put_cont64_req(isp, (ispcontreq64_t *)storage, qe1);
  } else {
   isp_put_cont_req(isp, (ispcontreq_t *)storage, qe1);
  }
  if (isp->isp_dblev & ISP_LOGDEBUG1) {
   isp_print_bytes(isp, "additional queue entry",
       QENTRY_LEN, qe1);
  }
  nqe++;
        }

copy_and_sync:
 ((isphdr_t *)fqe)->rqs_entry_count = nqe;
 switch (type) {
 case 131:
  ((ispreq_t *)fqe)->req_flags |= ddf;

  if (nsegs == 0)
   nsegs = 1;
  ((ispreq_t *)fqe)->req_seg_count = nsegs;
  isp_put_request(isp, fqe, qe0);
  break;
 case 135:
  ((ispreq_t *)fqe)->req_flags |= ddf;

  if (nsegs == 0)
   nsegs = 1;
  ((ispextreq_t *)fqe)->req_seg_count = nsegs;
  isp_put_extended_request(isp, fqe, qe0);
  break;
 case 130:
  ((ispreqt2_t *)fqe)->req_flags |= ddf;
  ((ispreqt2_t *)fqe)->req_seg_count = nsegs;
  ((ispreqt2_t *)fqe)->req_totalcnt = totalcnt;
  if (ISP_CAP_2KLOGIN(isp)) {
   isp_put_request_t2e(isp, fqe, qe0);
  } else {
   isp_put_request_t2(isp, fqe, qe0);
  }
  break;
 case 136:
 case 129:
  ((ispreqt3_t *)fqe)->req_flags |= ddf;
  ((ispreqt3_t *)fqe)->req_seg_count = nsegs;
  ((ispreqt3_t *)fqe)->req_totalcnt = totalcnt;
  if (ISP_CAP_2KLOGIN(isp)) {
   isp_put_request_t3e(isp, fqe, qe0);
  } else {
   isp_put_request_t3(isp, fqe, qe0);
  }
  break;
 case 128:
  ((ispreqt7_t *)fqe)->req_alen_datadir = ddf;
  ((ispreqt7_t *)fqe)->req_seg_count = nsegs;
  ((ispreqt7_t *)fqe)->req_dl = totalcnt;
  isp_put_request_t7(isp, fqe, qe0);
  break;
 default:
  return (CMD_COMPLETE);
 }
 if (isp->isp_dblev & ISP_LOGDEBUG1) {
  isp_print_bytes(isp, "first queue entry", QENTRY_LEN, qe0);
 }
 ISP_ADD_REQUEST(isp, nxt);
 return (CMD_QUEUED);
}
