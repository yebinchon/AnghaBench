
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int u_int32_t ;
typedef int u_char ;
struct nfsrvcache {int dummy; } ;
struct nfsrv_descript {int nd_flag; scalar_t__ nd_repstat; int nd_slotid; int nd_sessionid; int nd_mreq; TYPE_1__* nd_xprt; int nd_sockref; int nd_tcpconntime; int nd_retxid; int * nd_nam2; } ;
struct mbuf {int dummy; } ;
struct TYPE_4__ {int xp_sockref; } ;
typedef TYPE_1__ SVCXPRT ;


 int M_COPYALL ;
 int M_TEMP ;
 int M_WAITOK ;
 int ND_HASSEQUENCE ;
 int ND_NFSV2 ;
 int ND_NFSV4 ;
 int ND_NFSV41 ;
 int ND_SAMETCPCONN ;
 int ND_SAVEREPLY ;
 int ND_STREAMSOCK ;
 int NFSD_MONOSEC ;
 scalar_t__ NFSERR_DONTREPLY ;
 scalar_t__ NFSERR_REPLYFROMCACHE ;
 int NFSEXITCODE2 (int ,struct nfsrv_descript*) ;
 int NFSV4_SMALLSTR ;
 int RC_DOIT ;
 int RC_DROPIT ;
 int RC_REPLY ;
 int SVC_ACK (TYPE_1__*,scalar_t__*) ;
 int free (int *,int ) ;
 struct mbuf* m_copym (int ,int ,int ,int ) ;
 int nfsd_getminorvers (struct nfsrv_descript*,int *,int **,int*,int *) ;
 int nfsrc_trimcache (int ,scalar_t__,int ) ;
 int nfsrv_cache_session (int ,int ,scalar_t__,struct mbuf**) ;
 scalar_t__ nfsrv_mallocmget_limit () ;
 int nfsrvd_dorpc (struct nfsrv_descript*,int,int *,int,int ) ;
 int nfsrvd_getcache (struct nfsrv_descript*) ;
 struct nfsrvcache* nfsrvd_updatecache (struct nfsrv_descript*) ;

__attribute__((used)) static int
nfs_proc(struct nfsrv_descript *nd, u_int32_t xid, SVCXPRT *xprt,
    struct nfsrvcache **rpp)
{
 int cacherep = RC_DOIT, isdgram, taglen = -1;
 struct mbuf *m;
 u_char tag[NFSV4_SMALLSTR + 1], *tagstr = ((void*)0);
 u_int32_t minorvers = 0;
 uint32_t ack;

 *rpp = ((void*)0);
 if (nd->nd_nam2 == ((void*)0)) {
  nd->nd_flag |= ND_STREAMSOCK;
  isdgram = 0;
 } else {
  isdgram = 1;
 }
 if ((nd->nd_flag & ND_NFSV2) && nd->nd_nam2 != ((void*)0) &&
     nfsrv_mallocmget_limit()) {
  cacherep = RC_DROPIT;
 } else {




  if ((nd->nd_flag & (ND_NFSV4 | ND_STREAMSOCK)) ==
      ND_STREAMSOCK)
   nd->nd_flag |= ND_SAMETCPCONN;
  nd->nd_retxid = xid;
  nd->nd_tcpconntime = NFSD_MONOSEC;
  nd->nd_sockref = xprt->xp_sockref;
  if ((nd->nd_flag & ND_NFSV4) != 0)
   nfsd_getminorvers(nd, tag, &tagstr, &taglen,
       &minorvers);
  if ((nd->nd_flag & ND_NFSV41) != 0)

   cacherep = RC_DOIT;
  else {
   cacherep = nfsrvd_getcache(nd);
   ack = 0;
   SVC_ACK(xprt, &ack);
   nfsrc_trimcache(xprt->xp_sockref, ack, 0);
  }
 }







 if (cacherep == RC_DOIT) {
  if ((nd->nd_flag & ND_NFSV41) != 0)
   nd->nd_xprt = xprt;
  nfsrvd_dorpc(nd, isdgram, tagstr, taglen, minorvers);
  if ((nd->nd_flag & ND_NFSV41) != 0) {
   if (nd->nd_repstat != NFSERR_REPLYFROMCACHE &&
       (nd->nd_flag & ND_SAVEREPLY) != 0) {

    m = m_copym(nd->nd_mreq, 0, M_COPYALL,
        M_WAITOK);
   } else
    m = ((void*)0);
   if ((nd->nd_flag & ND_HASSEQUENCE) != 0)
    nfsrv_cache_session(nd->nd_sessionid,
        nd->nd_slotid, nd->nd_repstat, &m);
   if (nd->nd_repstat == NFSERR_REPLYFROMCACHE)
    nd->nd_repstat = 0;
   cacherep = RC_REPLY;
  } else {
   if (nd->nd_repstat == NFSERR_DONTREPLY)
    cacherep = RC_DROPIT;
   else
    cacherep = RC_REPLY;
   *rpp = nfsrvd_updatecache(nd);
  }
 }
 if (tagstr != ((void*)0) && taglen > NFSV4_SMALLSTR)
  free(tagstr, M_TEMP);

 NFSEXITCODE2(0, nd);
 return (cacherep);
}
