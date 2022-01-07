
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct nfssessionhash {int dummy; } ;
struct nfsdsession {int sess_slots; } ;
struct mbuf {int dummy; } ;


 int NFSLOCKSESSION (struct nfssessionhash*) ;
 struct nfssessionhash* NFSSESSIONHASH (int *) ;
 int NFSUNLOCKSESSION (struct nfssessionhash*) ;
 int m_freem (struct mbuf*) ;
 struct nfsdsession* nfsrv_findsession (int *) ;
 int nfsv4_seqsess_cacherep (int ,int ,int,struct mbuf**) ;
 int printf (char*) ;

void
nfsrv_cache_session(uint8_t *sessionid, uint32_t slotid, int repstat,
   struct mbuf **m)
{
 struct nfsdsession *sep;
 struct nfssessionhash *shp;

 shp = NFSSESSIONHASH(sessionid);
 NFSLOCKSESSION(shp);
 sep = nfsrv_findsession(sessionid);
 if (sep == ((void*)0)) {
  NFSUNLOCKSESSION(shp);
  printf("nfsrv_cache_session: no session\n");
  m_freem(*m);
  return;
 }
 nfsv4_seqsess_cacherep(slotid, sep->sess_slots, repstat, m);
 NFSUNLOCKSESSION(shp);
}
