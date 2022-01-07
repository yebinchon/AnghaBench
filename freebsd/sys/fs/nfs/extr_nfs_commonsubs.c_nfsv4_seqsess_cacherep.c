
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct nfsslot {scalar_t__ nfssl_inprog; struct mbuf* nfssl_reply; } ;
struct mbuf {int dummy; } ;


 int NFSERR_REPLYFROMCACHE ;
 int m_freem (struct mbuf*) ;

void
nfsv4_seqsess_cacherep(uint32_t slotid, struct nfsslot *slots, int repstat,
   struct mbuf **rep)
{

 if (repstat == NFSERR_REPLYFROMCACHE) {
  *rep = slots[slotid].nfssl_reply;
  slots[slotid].nfssl_reply = ((void*)0);
 } else {
  if (slots[slotid].nfssl_reply != ((void*)0))
   m_freem(slots[slotid].nfssl_reply);
  slots[slotid].nfssl_reply = *rep;
 }
 slots[slotid].nfssl_inprog = 0;
}
