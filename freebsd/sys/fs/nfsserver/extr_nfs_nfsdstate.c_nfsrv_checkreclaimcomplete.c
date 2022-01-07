
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfssessionhash {int dummy; } ;
struct nfsrv_descript {int nd_sessionid; } ;
struct nfsdsession {TYPE_1__* sess_clp; } ;
struct TYPE_2__ {int lc_flags; } ;


 int LCL_RECLAIMCOMPLETE ;
 int LCL_RECLAIMONEFS ;
 int NFSERR_BADSESSION ;
 int NFSERR_COMPLETEALREADY ;
 int NFSLOCKSESSION (struct nfssessionhash*) ;
 int NFSLOCKSTATE () ;
 struct nfssessionhash* NFSSESSIONHASH (int ) ;
 int NFSUNLOCKSESSION (struct nfssessionhash*) ;
 int NFSUNLOCKSTATE () ;
 struct nfsdsession* nfsrv_findsession (int ) ;
 int nfsrv_markreclaim (TYPE_1__*) ;

int
nfsrv_checkreclaimcomplete(struct nfsrv_descript *nd, int onefs)
{
 struct nfsdsession *sep;
 struct nfssessionhash *shp;
 int error = 0;

 shp = NFSSESSIONHASH(nd->nd_sessionid);
 NFSLOCKSTATE();
 NFSLOCKSESSION(shp);
 sep = nfsrv_findsession(nd->nd_sessionid);
 if (sep == ((void*)0)) {
  NFSUNLOCKSESSION(shp);
  NFSUNLOCKSTATE();
  return (NFSERR_BADSESSION);
 }

 if (onefs != 0)
  sep->sess_clp->lc_flags |= LCL_RECLAIMONEFS;

 else if ((sep->sess_clp->lc_flags & LCL_RECLAIMCOMPLETE) != 0)
  error = NFSERR_COMPLETEALREADY;
 else {
  sep->sess_clp->lc_flags |= LCL_RECLAIMCOMPLETE;
  nfsrv_markreclaim(sep->sess_clp);
 }
 NFSUNLOCKSESSION(shp);
 NFSUNLOCKSTATE();
 return (error);
}
