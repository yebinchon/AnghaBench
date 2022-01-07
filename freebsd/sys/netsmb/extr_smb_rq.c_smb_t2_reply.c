
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef scalar_t__ u_int16_t ;
struct smb_t2rq {int t2_flags; int t2_rparam; int t2_rdata; struct smb_rq* t2_rq; } ;
struct mdchain {int md_top; } ;
struct smb_rq {struct mdchain sr_rp; } ;


 int EINVAL ;
 int ENOENT ;
 int SMBERROR (char*,...) ;
 int SMBRQ_SLOCK (struct smb_rq*) ;
 int SMBRQ_SUNLOCK (struct smb_rq*) ;
 int SMBT2_ALLRECV ;
 int SMBT2_ALLSENT ;
 int m_dumpm (int ) ;
 int md_get_uint16 (struct mdchain*,int *) ;
 int md_get_uint16le (struct mdchain*,scalar_t__*) ;
 int md_get_uint8 (struct mdchain*,int*) ;
 int md_next_record (struct mdchain*) ;
 int smb_rq_reply (struct smb_rq*) ;
 int smb_t2_placedata (int ,scalar_t__,scalar_t__,int *) ;

__attribute__((used)) static int
smb_t2_reply(struct smb_t2rq *t2p)
{
 struct mdchain *mdp;
 struct smb_rq *rqp = t2p->t2_rq;
 int error, totpgot, totdgot;
 u_int16_t totpcount, totdcount, pcount, poff, doff, pdisp, ddisp;
 u_int16_t tmp, bc, dcount;
 u_int8_t wc;

 error = smb_rq_reply(rqp);
 if (error)
  return error;
 if ((t2p->t2_flags & SMBT2_ALLSENT) == 0) {



  SMBRQ_SLOCK(rqp);
  md_next_record(&rqp->sr_rp);
  SMBRQ_SUNLOCK(rqp);
  return 0;
 }





 totpgot = totdgot = 0;
 totpcount = totdcount = 0xffff;
 mdp = &rqp->sr_rp;
 for (;;) {
  m_dumpm(mdp->md_top);
  if ((error = md_get_uint8(mdp, &wc)) != 0)
   break;
  if (wc < 10) {
   error = ENOENT;
   break;
  }
  if ((error = md_get_uint16le(mdp, &tmp)) != 0)
   break;
  if (totpcount > tmp)
   totpcount = tmp;
  md_get_uint16le(mdp, &tmp);
  if (totdcount > tmp)
   totdcount = tmp;
  if ((error = md_get_uint16le(mdp, &tmp)) != 0 ||
      (error = md_get_uint16le(mdp, &pcount)) != 0 ||
      (error = md_get_uint16le(mdp, &poff)) != 0 ||
      (error = md_get_uint16le(mdp, &pdisp)) != 0)
   break;
  if (pcount != 0 && pdisp != totpgot) {
   SMBERROR("Can't handle disordered parameters %d:%d\n",
       pdisp, totpgot);
   error = EINVAL;
   break;
  }
  if ((error = md_get_uint16le(mdp, &dcount)) != 0 ||
      (error = md_get_uint16le(mdp, &doff)) != 0 ||
      (error = md_get_uint16le(mdp, &ddisp)) != 0)
   break;
  if (dcount != 0 && ddisp != totdgot) {
   SMBERROR("Can't handle disordered data\n");
   error = EINVAL;
   break;
  }
  md_get_uint8(mdp, &wc);
  md_get_uint8(mdp, ((void*)0));
  tmp = wc;
  while (tmp--)
   md_get_uint16(mdp, ((void*)0));
  if ((error = md_get_uint16le(mdp, &bc)) != 0)
   break;

  if (dcount) {
   error = smb_t2_placedata(mdp->md_top, doff, dcount,
       &t2p->t2_rdata);
   if (error)
    break;
  }
  if (pcount) {
   error = smb_t2_placedata(mdp->md_top, poff, pcount,
       &t2p->t2_rparam);
   if (error)
    break;
  }
  totpgot += pcount;
  totdgot += dcount;
  if (totpgot >= totpcount && totdgot >= totdcount) {
   error = 0;
   t2p->t2_flags |= SMBT2_ALLRECV;
   break;
  }



  SMBRQ_SLOCK(rqp);
  md_next_record(&rqp->sr_rp);
  SMBRQ_SUNLOCK(rqp);
  error = smb_rq_reply(rqp);
  if (error)
   break;
 }
 return error;
}
