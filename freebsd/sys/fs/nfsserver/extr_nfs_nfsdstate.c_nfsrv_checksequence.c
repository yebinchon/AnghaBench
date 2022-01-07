
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct nfssessionhash {int dummy; } ;
struct TYPE_10__ {int qval; } ;
struct nfsrv_descript {TYPE_7__* nd_xprt; int nd_flag; TYPE_1__ nd_clientid; int nd_slotid; int nd_sessionid; } ;
struct TYPE_12__ {TYPE_7__* nfsess_xprt; } ;
struct nfsdsession {int sess_crflags; TYPE_6__* sess_clp; TYPE_3__ sess_cbsess; int sess_slots; } ;
struct TYPE_16__ {scalar_t__ xp_idletimeout; int xp_p2; } ;
struct TYPE_14__ {TYPE_4__* nr_client; } ;
struct TYPE_11__ {int qval; } ;
struct TYPE_15__ {int lc_flags; TYPE_5__ lc_req; TYPE_2__ lc_clientid; int lc_expiry; } ;
struct TYPE_13__ {int cl_private; } ;
typedef TYPE_7__ SVCXPRT ;
typedef int NFSPROC_T ;


 int LCL_DONEBINDCONN ;
 int ND_IMPLIEDCLID ;
 int ND_SAVEREPLY ;
 int NFSD_DEBUG (int,char*) ;
 int NFSERR_ADMINREVOKED ;
 int NFSERR_BADSESSION ;
 int NFSERR_EXPIRED ;
 int NFSLOCKSESSION (struct nfssessionhash*) ;
 struct nfssessionhash* NFSSESSIONHASH (int ) ;
 int NFSUNLOCKSESSION (struct nfssessionhash*) ;
 int NFSV4CRSESS_CONNBACKCHAN ;
 scalar_t__ NFSV4SEQ_ADMINSTATEREVOKED ;
 scalar_t__ NFSV4SEQ_CBPATHDOWN ;
 scalar_t__ NFSV4SEQ_EXPIREDALLSTATEREVOKED ;
 scalar_t__ NFSV4_SLOTS ;
 int SVC_ACQUIRE (TYPE_7__*) ;
 int SVC_RELEASE (TYPE_7__*) ;
 struct nfsdsession* nfsrv_findsession (int ) ;
 int nfsrv_leaseexpiry () ;
 int nfsv4_seqsession (scalar_t__,int ,scalar_t__,int ,int *,scalar_t__) ;

int
nfsrv_checksequence(struct nfsrv_descript *nd, uint32_t sequenceid,
    uint32_t *highest_slotidp, uint32_t *target_highest_slotidp, int cache_this,
    uint32_t *sflagsp, NFSPROC_T *p)
{
 struct nfsdsession *sep;
 struct nfssessionhash *shp;
 int error;
 SVCXPRT *savxprt;

 shp = NFSSESSIONHASH(nd->nd_sessionid);
 NFSLOCKSESSION(shp);
 sep = nfsrv_findsession(nd->nd_sessionid);
 if (sep == ((void*)0)) {
  NFSUNLOCKSESSION(shp);
  return (NFSERR_BADSESSION);
 }
 error = nfsv4_seqsession(sequenceid, nd->nd_slotid, *highest_slotidp,
     sep->sess_slots, ((void*)0), NFSV4_SLOTS - 1);
 if (error != 0) {
  NFSUNLOCKSESSION(shp);
  return (error);
 }
 if (cache_this != 0)
  nd->nd_flag |= ND_SAVEREPLY;

 sep->sess_clp->lc_expiry = nfsrv_leaseexpiry();
 nd->nd_clientid.qval = sep->sess_clp->lc_clientid.qval;
 nd->nd_flag |= ND_IMPLIEDCLID;
 if (sep->sess_clp->lc_req.nr_client != ((void*)0) &&
     sep->sess_cbsess.nfsess_xprt != nd->nd_xprt &&
     (sep->sess_crflags & NFSV4CRSESS_CONNBACKCHAN) != 0 &&
     (sep->sess_clp->lc_flags & LCL_DONEBINDCONN) == 0) {
  NFSD_DEBUG(2,
      "nfsrv_checksequence: implicit back channel bind\n");
  savxprt = sep->sess_cbsess.nfsess_xprt;
  SVC_ACQUIRE(nd->nd_xprt);
  nd->nd_xprt->xp_p2 =
      sep->sess_clp->lc_req.nr_client->cl_private;
  nd->nd_xprt->xp_idletimeout = 0;
  sep->sess_cbsess.nfsess_xprt = nd->nd_xprt;
  if (savxprt != ((void*)0))
   SVC_RELEASE(savxprt);
 }

 *sflagsp = 0;
 if (sep->sess_clp->lc_req.nr_client == ((void*)0))
  *sflagsp |= NFSV4SEQ_CBPATHDOWN;
 NFSUNLOCKSESSION(shp);
 if (error == NFSERR_EXPIRED) {
  *sflagsp |= NFSV4SEQ_EXPIREDALLSTATEREVOKED;
  error = 0;
 } else if (error == NFSERR_ADMINREVOKED) {
  *sflagsp |= NFSV4SEQ_ADMINSTATEREVOKED;
  error = 0;
 }
 *highest_slotidp = *target_highest_slotidp = NFSV4_SLOTS - 1;
 return (0);
}
