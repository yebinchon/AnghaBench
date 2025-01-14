
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
struct nfsstate {scalar_t__ ls_seq; struct nfsrvcache* ls_op; } ;
struct nfsrvcache {int rc_flag; scalar_t__ rc_refcnt; scalar_t__ rc_xid; scalar_t__ rc_reqlen; scalar_t__ rc_cksum; } ;
struct nfsrv_descript {int nd_flag; struct nfsrvcache* nd_rp; } ;


 int ND_NFSV41 ;
 int NFSERR_BADSEQID ;
 int NFSERR_DONTREPLY ;
 int NFSERR_REPLYFROMCACHE ;
 int NFSEXITCODE2 (int,struct nfsrv_descript*) ;
 int RC_INPROG ;
 int nfsrvd_delcache (struct nfsrvcache*) ;
 int nfsrvd_derefcache (struct nfsrvcache*) ;
 int nfsrvd_refcache (struct nfsrvcache*) ;
 int panic (char*) ;
 int printf (char*,scalar_t__) ;

__attribute__((used)) static int
nfsrv_checkseqid(struct nfsrv_descript *nd, u_int32_t seqid,
    struct nfsstate *stp, struct nfsrvcache *op)
{
 int error = 0;

 if ((nd->nd_flag & ND_NFSV41) != 0)

  goto out;
 if (op != nd->nd_rp)
  panic("nfsrvstate checkseqid");
 if (!(op->rc_flag & RC_INPROG))
  panic("nfsrvstate not inprog");
 if (stp->ls_op && stp->ls_op->rc_refcnt <= 0) {
  printf("refcnt=%d\n", stp->ls_op->rc_refcnt);
  panic("nfsrvstate op refcnt");
 }
 if ((stp->ls_seq + 1) == seqid) {
  if (stp->ls_op)
   nfsrvd_derefcache(stp->ls_op);
  stp->ls_op = op;
  nfsrvd_refcache(op);
  stp->ls_seq = seqid;
  goto out;
 } else if (stp->ls_seq == seqid && stp->ls_op &&
  op->rc_xid == stp->ls_op->rc_xid &&
  op->rc_refcnt == 0 &&
  op->rc_reqlen == stp->ls_op->rc_reqlen &&
  op->rc_cksum == stp->ls_op->rc_cksum) {
  if (stp->ls_op->rc_flag & RC_INPROG) {
   error = NFSERR_DONTREPLY;
   goto out;
  }
  nd->nd_rp = stp->ls_op;
  nd->nd_rp->rc_flag |= RC_INPROG;
  nfsrvd_delcache(op);
  error = NFSERR_REPLYFROMCACHE;
  goto out;
 }
 error = NFSERR_BADSEQID;

out:
 NFSEXITCODE2(error, nd);
 return (error);
}
