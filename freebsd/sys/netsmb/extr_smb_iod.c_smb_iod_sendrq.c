
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int dummy; } ;
struct smbiod {int iod_state; scalar_t__ iod_muxcnt; int iod_lastrqsent; struct smb_vc* iod_vc; struct thread* iod_td; } ;
struct smb_vc {scalar_t__ vc_maxmux; int vc_hflags2; int vc_smbuid; } ;
struct smb_share {int ss_tid; } ;
struct TYPE_2__ {int mb_top; } ;
struct smb_rq {scalar_t__ sr_sendcnt; int sr_lerror; int sr_state; int sr_flags; int sr_timesent; TYPE_1__ sr_rq; int sr_mid; int sr_rquid; int sr_rqtid; struct smb_share* sr_share; } ;
struct mbuf {int dummy; } ;


 int EINTR ;
 int ENOTCONN ;
 int M_COPYALL ;
 int M_WAITOK ;
 int SMBIODEBUG (char*,int) ;



 int SMBRQ_SENT ;
 int SMBR_RESTART ;
 int SMBR_SENT ;
 int SMBSDEBUG (char*,int ,int ,int ,int ) ;
 int SMB_FLAGS2_SECURITY_SIGNATURE ;
 int SMB_TID_UNKNOWN ;
 scalar_t__ SMB_TRAN_FATAL (struct smb_vc*,int) ;
 int SMB_TRAN_SEND (struct smb_vc*,struct mbuf*,struct thread*) ;
 int getnanotime (int *) ;
 int le16enc (int ,int ) ;
 struct mbuf* m_copym (int ,int ,int ,int ) ;
 int m_dumpm (int ) ;
 int mb_fixhdr (TYPE_1__*) ;
 int smb_iod_rqprocessed (struct smb_rq*,int) ;
 scalar_t__ smb_rq_intr (struct smb_rq*) ;
 int smb_rq_sign (struct smb_rq*) ;

__attribute__((used)) static int
smb_iod_sendrq(struct smbiod *iod, struct smb_rq *rqp)
{
 struct thread *td = iod->iod_td;
 struct smb_vc *vcp = iod->iod_vc;
 struct smb_share *ssp = rqp->sr_share;
 struct mbuf *m;
 int error;

 SMBIODEBUG("iod_state = %d\n", iod->iod_state);
 switch (iod->iod_state) {
     case 129:
  smb_iod_rqprocessed(rqp, ENOTCONN);
  return 0;
     case 130:
  iod->iod_state = 128;
  return 0;
     case 128:
  return 0;
     default:
  break;
 }
 if (rqp->sr_sendcnt == 0) {




  le16enc(rqp->sr_rqtid, ssp ? ssp->ss_tid : SMB_TID_UNKNOWN);
  le16enc(rqp->sr_rquid, vcp ? vcp->vc_smbuid : 0);
  mb_fixhdr(&rqp->sr_rq);
  if (vcp->vc_hflags2 & SMB_FLAGS2_SECURITY_SIGNATURE)
   smb_rq_sign(rqp);
 }
 if (rqp->sr_sendcnt++ > 5) {
  rqp->sr_flags |= SMBR_RESTART;
  smb_iod_rqprocessed(rqp, rqp->sr_lerror);




  return ENOTCONN;
 }
 SMBSDEBUG("M:%04x, P:%04x, U:%04x, T:%04x\n", rqp->sr_mid, 0, 0, 0);
 m_dumpm(rqp->sr_rq.mb_top);
 m = m_copym(rqp->sr_rq.mb_top, 0, M_COPYALL, M_WAITOK);
 error = rqp->sr_lerror = SMB_TRAN_SEND(vcp, m, td);
 if (error == 0) {
  getnanotime(&rqp->sr_timesent);
  iod->iod_lastrqsent = rqp->sr_timesent;
  rqp->sr_flags |= SMBR_SENT;
  rqp->sr_state = SMBRQ_SENT;
  return 0;
 }



 if (SMB_TRAN_FATAL(vcp, error)) {



  return ENOTCONN;
 }
 if (smb_rq_intr(rqp))
  smb_iod_rqprocessed(rqp, EINTR);
 return 0;
}
