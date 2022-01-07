
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct pf_fragment {scalar_t__ fr_timeout; int fr_id; } ;


 int DPFPRINTF (char*) ;
 int PF_FRAG_LOCK () ;
 int PF_FRAG_UNLOCK () ;
 struct pf_fragment* TAILQ_LAST (int *,int ) ;
 int V_pf_fragqueue ;
 int pf_fragqueue ;
 int pf_free_fragment (struct pf_fragment*) ;

void
pf_purge_fragments(uint32_t expire)
{
 struct pf_fragment *frag;

 PF_FRAG_LOCK();
 while ((frag = TAILQ_LAST(&V_pf_fragqueue, pf_fragqueue)) != ((void*)0)) {
  if (frag->fr_timeout > expire)
   break;

  DPFPRINTF(("expiring %d(%p)\n", frag->fr_id, frag));
  pf_free_fragment(frag);
 }

 PF_FRAG_UNLOCK();
}
