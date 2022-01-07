
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u_quad_t ;
struct TYPE_5__ {int seqid; } ;
struct nfsstate {TYPE_1__ ls_stateid; } ;
struct nfsrv_descript {int dummy; } ;
struct nfsclient {int dummy; } ;
struct TYPE_6__ {scalar_t__ seqid; } ;
typedef TYPE_2__ nfsv4stateid_t ;
typedef int nfsquad_t ;
typedef int NFSPROC_T ;


 int CLOPS_RENEW ;
 int NFSERR_OLDSTATEID ;
 int NFSLOCKSTATE () ;
 int NFSUNLOCKSTATE () ;
 scalar_t__ SEQ_LT (scalar_t__,int ) ;
 int nfsrv_getclient (int ,int ,struct nfsclient**,int *,int ,int ,struct nfsrv_descript*,int *) ;
 int nfsrv_getstate (struct nfsclient*,TYPE_2__*,int ,struct nfsstate**) ;

int
nfsrv_teststateid(struct nfsrv_descript *nd, nfsv4stateid_t *stateidp,
    NFSPROC_T *p)
{
 struct nfsclient *clp;
 struct nfsstate *stp;
 int error;

 NFSLOCKSTATE();



 error = nfsrv_getclient((nfsquad_t)((u_quad_t)0), CLOPS_RENEW, &clp,
     ((void*)0), (nfsquad_t)((u_quad_t)0), 0, nd, p);
 if (error == 0)
  error = nfsrv_getstate(clp, stateidp, 0, &stp);
 if (error == 0 && stateidp->seqid != 0 &&
     SEQ_LT(stateidp->seqid, stp->ls_stateid.seqid))
  error = NFSERR_OLDSTATEID;
 NFSUNLOCKSTATE();
 return (error);
}
