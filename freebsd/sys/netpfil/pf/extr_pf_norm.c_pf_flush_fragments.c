
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_fragment {int dummy; } ;


 int DPFPRINTF (char*) ;
 int PF_FRAG_ASSERT () ;
 struct pf_fragment* TAILQ_LAST (int *,int ) ;
 int V_pf_fragqueue ;
 int V_pf_frent_z ;
 int pf_fragqueue ;
 int pf_free_fragment (struct pf_fragment*) ;
 int uma_zone_get_cur (int ) ;

__attribute__((used)) static void
pf_flush_fragments(void)
{
 struct pf_fragment *frag;
 int goal;

 PF_FRAG_ASSERT();

 goal = uma_zone_get_cur(V_pf_frent_z) * 9 / 10;
 DPFPRINTF(("trying to free %d frag entriess\n", goal));
 while (goal < uma_zone_get_cur(V_pf_frent_z)) {
  frag = TAILQ_LAST(&V_pf_fragqueue, pf_fragqueue);
  if (frag)
   pf_free_fragment(frag);
  else
   break;
 }
}
