
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct svc_req {scalar_t__ rq_proc; int rq_xid; int rq_addr; TYPE_1__* rq_args; } ;
struct nfsrv_descript {scalar_t__ nd_procnum; int nd_flag; int nd_repstat; TYPE_1__* nd_mreq; int * nd_cred; TYPE_1__* nd_mrep; int nd_nam2; int nd_nam; TYPE_1__* nd_md; int nd_dpos; } ;
typedef int nd ;
struct TYPE_6__ {scalar_t__ m_len; } ;
typedef int SVCXPRT ;


 int M_WAITOK ;
 int ND_NFSCB ;
 int ND_NFSV4 ;
 int NFSCL_DEBUG (int,char*,...) ;
 int NFSERR_AUTHERR ;
 int NFSMGET (TYPE_1__*) ;
 scalar_t__ NFSPROC_NULL ;
 scalar_t__ NFSV4PROC_CBCOMPOUND ;
 int RC_DROPIT ;
 int RC_REPLY ;
 int caddr_t ;
 int crfree (int *) ;
 int m_freem (TYPE_1__*) ;
 int mac_cred_associate_nfsd (int *) ;
 int memset (struct nfsrv_descript*,int ,int) ;
 int mtod (TYPE_1__*,int ) ;
 int newnfs_realign (TYPE_1__**,int ) ;
 int nfs_cbproc (struct nfsrv_descript*,int ) ;
 int svc_freereq (struct svc_req*) ;
 int svc_getcred (struct svc_req*,int **,int*) ;
 int svc_getrpccaller (struct svc_req*) ;
 int svc_sendreply_mbuf (struct svc_req*,TYPE_1__*) ;
 int svcerr_auth (struct svc_req*,int) ;
 int svcerr_decode (struct svc_req*) ;
 int svcerr_noproc (struct svc_req*) ;
 int svcerr_systemerr (struct svc_req*) ;
 int svcerr_weakauth (struct svc_req*) ;

__attribute__((used)) static void
nfscb_program(struct svc_req *rqst, SVCXPRT *xprt)
{
 struct nfsrv_descript nd;
 int cacherep, credflavor;

 memset(&nd, 0, sizeof(nd));
 if (rqst->rq_proc != NFSPROC_NULL &&
     rqst->rq_proc != NFSV4PROC_CBCOMPOUND) {
  svcerr_noproc(rqst);
  svc_freereq(rqst);
  return;
 }
 nd.nd_procnum = rqst->rq_proc;
 nd.nd_flag = (ND_NFSCB | ND_NFSV4);






 nd.nd_mrep = rqst->rq_args;
 rqst->rq_args = ((void*)0);
 newnfs_realign(&nd.nd_mrep, M_WAITOK);
 nd.nd_md = nd.nd_mrep;
 nd.nd_dpos = mtod(nd.nd_md, caddr_t);
 nd.nd_nam = svc_getrpccaller(rqst);
 nd.nd_nam2 = rqst->rq_addr;
 nd.nd_mreq = ((void*)0);
 nd.nd_cred = ((void*)0);

 NFSCL_DEBUG(1, "cbproc=%d\n",nd.nd_procnum);
 if (nd.nd_procnum != NFSPROC_NULL) {
  if (!svc_getcred(rqst, &nd.nd_cred, &credflavor)) {
   svcerr_weakauth(rqst);
   svc_freereq(rqst);
   m_freem(nd.nd_mrep);
   return;
  }







  cacherep = nfs_cbproc(&nd, rqst->rq_xid);
 } else {
  NFSMGET(nd.nd_mreq);
  nd.nd_mreq->m_len = 0;
  cacherep = RC_REPLY;
 }
 if (nd.nd_mrep != ((void*)0))
  m_freem(nd.nd_mrep);

 if (nd.nd_cred != ((void*)0))
  crfree(nd.nd_cred);

 if (cacherep == RC_DROPIT) {
  if (nd.nd_mreq != ((void*)0))
   m_freem(nd.nd_mreq);
  svc_freereq(rqst);
  return;
 }

 if (nd.nd_mreq == ((void*)0)) {
  svcerr_decode(rqst);
  svc_freereq(rqst);
  return;
 }

 if (nd.nd_repstat & NFSERR_AUTHERR) {
  svcerr_auth(rqst, nd.nd_repstat & ~NFSERR_AUTHERR);
  if (nd.nd_mreq != ((void*)0))
   m_freem(nd.nd_mreq);
 } else if (!svc_sendreply_mbuf(rqst, nd.nd_mreq))
  svcerr_systemerr(rqst);
 else
  NFSCL_DEBUG(1, "cbrep sent\n");
 svc_freereq(rqst);
}
