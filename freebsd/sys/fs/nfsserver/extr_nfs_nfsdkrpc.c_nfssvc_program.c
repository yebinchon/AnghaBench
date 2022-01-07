
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u_short ;
struct svc_req {scalar_t__ rq_vers; size_t rq_proc; scalar_t__ rq_reply_seq; int rq_xid; int rq_addr; TYPE_1__* rq_args; } ;
struct sockaddr_in {scalar_t__ sin_family; int sin_addr; int sin_port; } ;
struct sockaddr {int dummy; } ;
struct nfsrvcache {int dummy; } ;
struct nfsrv_descript {size_t nd_procnum; int nd_flag; int nd_repstat; TYPE_1__* nd_mreq; int * nd_cred; TYPE_1__* nd_mrep; struct sockaddr* nd_nam; int nd_nam2; TYPE_1__* nd_md; int nd_dpos; } ;
typedef int nd ;
struct TYPE_8__ {int sin6_addr; } ;
struct TYPE_7__ {scalar_t__ m_len; } ;
typedef int SVCXPRT ;


 scalar_t__ AF_INET6 ;
 int AUTH_SYS ;
 int INET6_ADDRSTRLEN ;
 int INET_ADDRSTRLEN ;
 scalar_t__ IPPORT_RESERVED ;
 int M_WAITOK ;
 int ND_GSS ;
 int ND_GSSINTEGRITY ;
 int ND_GSSPRIVACY ;
 int ND_NFSV2 ;
 int ND_NFSV3 ;
 int ND_NFSV4 ;
 int NFSERR_AUTHERR ;
 int NFSEXITCODE (int ) ;
 int NFSLOCKV4ROOTMUTEX () ;
 int NFSMGET (TYPE_1__*) ;
 scalar_t__ NFSPROC_NOOP ;
 size_t NFSPROC_NULL ;
 int NFSUNLOCKV4ROOTMUTEX () ;
 size_t NFSV2PROC_STATFS ;
 size_t NFSV4PROC_COMPOUND ;
 int NFSV4ROOTLOCKMUTEXPTR ;
 size_t NFS_V3NPROCS ;
 scalar_t__ NFS_VER2 ;
 scalar_t__ NFS_VER3 ;
 int RC_DROPIT ;
 int RC_REPLY ;
 int RPCSEC_GSS_KRB5 ;
 int RPCSEC_GSS_KRB5I ;
 int RPCSEC_GSS_KRB5P ;
 scalar_t__ SVC_ACK (int *,int *) ;
 int caddr_t ;
 int crfree (int *) ;
 int curthread ;
 char* inet_ntoa_r (int ,char*) ;
 char* ip6_sprintf (char*,int *) ;
 int m_freem (TYPE_1__*) ;
 int mac_cred_associate_nfsd (int *) ;
 int memset (struct nfsrv_descript*,int ,int) ;
 int mtod (TYPE_1__*,int ) ;
 scalar_t__* newnfs_nfsv3_procid ;
 int newnfs_realign (TYPE_1__**,int ) ;
 scalar_t__ nfs_privport ;
 int nfs_proc (struct nfsrv_descript*,int ,int *,struct nfsrvcache**) ;
 int nfsd_suspend_lock ;
 int nfsrvd_sentcache (struct nfsrvcache*,int,scalar_t__) ;
 int nfsv4_getref (int *,int *,int ,int *) ;
 int nfsv4_lock (int *,int ,int *,int ,int *) ;
 int nfsv4_relref (int *) ;
 int nfsvno_v4rootexport (struct nfsrv_descript*) ;
 scalar_t__ ntohs (int ) ;
 int printf (char*,char*,scalar_t__) ;
 TYPE_2__* satosin6 (struct sockaddr_in*) ;
 int svc_freereq (struct svc_req*) ;
 int svc_getcred (struct svc_req*,int **,int*) ;
 struct sockaddr* svc_getrpccaller (struct svc_req*) ;
 int svc_sendreply_mbuf (struct svc_req*,TYPE_1__*) ;
 int svcerr_auth (struct svc_req*,int) ;
 int svcerr_decode (struct svc_req*) ;
 int svcerr_noproc (struct svc_req*) ;
 int svcerr_systemerr (struct svc_req*) ;
 int svcerr_weakauth (struct svc_req*) ;
 int td_softdep_cleanup (int ) ;

__attribute__((used)) static void
nfssvc_program(struct svc_req *rqst, SVCXPRT *xprt)
{
 struct nfsrv_descript nd;
 struct nfsrvcache *rp = ((void*)0);
 int cacherep, credflavor;

 memset(&nd, 0, sizeof(nd));
 if (rqst->rq_vers == NFS_VER2) {
  if (rqst->rq_proc > NFSV2PROC_STATFS ||
      newnfs_nfsv3_procid[rqst->rq_proc] == NFSPROC_NOOP) {
   svcerr_noproc(rqst);
   svc_freereq(rqst);
   goto out;
  }
  nd.nd_procnum = newnfs_nfsv3_procid[rqst->rq_proc];
  nd.nd_flag = ND_NFSV2;
 } else if (rqst->rq_vers == NFS_VER3) {
  if (rqst->rq_proc >= NFS_V3NPROCS) {
   svcerr_noproc(rqst);
   svc_freereq(rqst);
   goto out;
  }
  nd.nd_procnum = rqst->rq_proc;
  nd.nd_flag = ND_NFSV3;
 } else {
  if (rqst->rq_proc != NFSPROC_NULL &&
      rqst->rq_proc != NFSV4PROC_COMPOUND) {
   svcerr_noproc(rqst);
   svc_freereq(rqst);
   goto out;
  }
  nd.nd_procnum = rqst->rq_proc;
  nd.nd_flag = ND_NFSV4;
 }






 nd.nd_mrep = rqst->rq_args;
 rqst->rq_args = ((void*)0);
 newnfs_realign(&nd.nd_mrep, M_WAITOK);
 nd.nd_md = nd.nd_mrep;
 nd.nd_dpos = mtod(nd.nd_md, caddr_t);
 nd.nd_nam = svc_getrpccaller(rqst);
 nd.nd_nam2 = rqst->rq_addr;
 nd.nd_mreq = ((void*)0);
 nd.nd_cred = ((void*)0);

 if (nfs_privport != 0) {

  u_short port;
  struct sockaddr *nam = nd.nd_nam;
  struct sockaddr_in *sin;

  sin = (struct sockaddr_in *)nam;




  port = ntohs(sin->sin_port);
  if (port >= IPPORT_RESERVED &&
      nd.nd_procnum != NFSPROC_NULL) {



   char buf[INET_ADDRSTRLEN];
   printf("NFS request from unprivileged port (%s:%d)\n",







       inet_ntoa_r(sin->sin_addr, buf), port);
   svcerr_weakauth(rqst);
   svc_freereq(rqst);
   m_freem(nd.nd_mrep);
   goto out;
  }
 }

 if (nd.nd_procnum != NFSPROC_NULL) {
  if (!svc_getcred(rqst, &nd.nd_cred, &credflavor)) {
   svcerr_weakauth(rqst);
   svc_freereq(rqst);
   m_freem(nd.nd_mrep);
   goto out;
  }


  if (credflavor == RPCSEC_GSS_KRB5) {
   nd.nd_flag |= ND_GSS;
  } else if (credflavor == RPCSEC_GSS_KRB5I) {
   nd.nd_flag |= (ND_GSS | ND_GSSINTEGRITY);
  } else if (credflavor == RPCSEC_GSS_KRB5P) {
   nd.nd_flag |= (ND_GSS | ND_GSSPRIVACY);
  } else if (credflavor != AUTH_SYS) {
   svcerr_weakauth(rqst);
   svc_freereq(rqst);
   m_freem(nd.nd_mrep);
   goto out;
  }
  NFSLOCKV4ROOTMUTEX();
  nfsv4_lock(&nfsd_suspend_lock, 0, ((void*)0), NFSV4ROOTLOCKMUTEXPTR,
      ((void*)0));
  nfsv4_getref(&nfsd_suspend_lock, ((void*)0), NFSV4ROOTLOCKMUTEXPTR,
      ((void*)0));
  NFSUNLOCKV4ROOTMUTEX();

  if ((nd.nd_flag & ND_NFSV4) != 0) {
   nd.nd_repstat = nfsvno_v4rootexport(&nd);
   if (nd.nd_repstat != 0) {
    NFSLOCKV4ROOTMUTEX();
    nfsv4_relref(&nfsd_suspend_lock);
    NFSUNLOCKV4ROOTMUTEX();
    svcerr_weakauth(rqst);
    svc_freereq(rqst);
    m_freem(nd.nd_mrep);
    goto out;
   }
  }

  cacherep = nfs_proc(&nd, rqst->rq_xid, xprt, &rp);
  NFSLOCKV4ROOTMUTEX();
  nfsv4_relref(&nfsd_suspend_lock);
  NFSUNLOCKV4ROOTMUTEX();
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
  goto out;
 }

 if (nd.nd_mreq == ((void*)0)) {
  svcerr_decode(rqst);
  svc_freereq(rqst);
  goto out;
 }

 if (nd.nd_repstat & NFSERR_AUTHERR) {
  svcerr_auth(rqst, nd.nd_repstat & ~NFSERR_AUTHERR);
  if (nd.nd_mreq != ((void*)0))
   m_freem(nd.nd_mreq);
 } else if (!svc_sendreply_mbuf(rqst, nd.nd_mreq)) {
  svcerr_systemerr(rqst);
 }
 if (rp != ((void*)0)) {
  nfsrvd_sentcache(rp, (rqst->rq_reply_seq != 0 ||
      SVC_ACK(xprt, ((void*)0))), rqst->rq_reply_seq);
 }
 svc_freereq(rqst);

out:
 td_softdep_cleanup(curthread);
 NFSEXITCODE(0);
}
