
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct nfssessionhash {int dummy; } ;
struct TYPE_4__ {int * nfsess_xprt; } ;
struct nfsdsession {scalar_t__ sess_refcnt; TYPE_2__ sess_cbsess; TYPE_1__* sess_slots; int * sess_sessionid; } ;
struct TYPE_3__ {int * nfssl_reply; } ;


 int LIST_REMOVE (struct nfsdsession*,int ) ;
 int M_NFSDSESSION ;
 int NFSERR_BACKCHANBUSY ;
 int NFSERR_BADSESSION ;
 int NFSLOCKSESSION (struct nfssessionhash*) ;
 int NFSLOCKSTATE () ;
 struct nfssessionhash* NFSSESSIONHASH (int *) ;
 int NFSUNLOCKSESSION (struct nfssessionhash*) ;
 int NFSUNLOCKSTATE () ;
 int NFSV4_SLOTS ;
 int SVC_RELEASE (int *) ;
 int free (struct nfsdsession*,int ) ;
 int m_freem (int *) ;
 struct nfsdsession* nfsrv_findsession (int *) ;
 int sess_hash ;
 int sess_list ;

__attribute__((used)) static int
nfsrv_freesession(struct nfsdsession *sep, uint8_t *sessionid)
{
 struct nfssessionhash *shp;
 int i;

 NFSLOCKSTATE();
 if (sep == ((void*)0)) {
  shp = NFSSESSIONHASH(sessionid);
  NFSLOCKSESSION(shp);
  sep = nfsrv_findsession(sessionid);
 } else {
  shp = NFSSESSIONHASH(sep->sess_sessionid);
  NFSLOCKSESSION(shp);
 }
 if (sep != ((void*)0)) {
  sep->sess_refcnt--;
  if (sep->sess_refcnt > 0) {
   NFSUNLOCKSESSION(shp);
   NFSUNLOCKSTATE();
   return (NFSERR_BACKCHANBUSY);
  }
  LIST_REMOVE(sep, sess_hash);
  LIST_REMOVE(sep, sess_list);
 }
 NFSUNLOCKSESSION(shp);
 NFSUNLOCKSTATE();
 if (sep == ((void*)0))
  return (NFSERR_BADSESSION);
 for (i = 0; i < NFSV4_SLOTS; i++)
  if (sep->sess_slots[i].nfssl_reply != ((void*)0))
   m_freem(sep->sess_slots[i].nfssl_reply);
 if (sep->sess_cbsess.nfsess_xprt != ((void*)0))
  SVC_RELEASE(sep->sess_cbsess.nfsess_xprt);
 free(sep, M_NFSDSESSION);
 return (0);
}
