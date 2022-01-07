
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
struct pf_frent {int dummy; } ;


 int M_NOWAIT ;
 int PFRES_MEMORY ;
 int PF_FRAG_ASSERT () ;
 int REASON_SET (int *,int ) ;
 int V_pf_frent_z ;
 int pf_flush_fragments () ;
 struct pf_frent* uma_zalloc (int ,int ) ;

__attribute__((used)) static struct pf_frent *
pf_create_fragment(u_short *reason)
{
 struct pf_frent *frent;

 PF_FRAG_ASSERT();

 frent = uma_zalloc(V_pf_frent_z, M_NOWAIT);
 if (frent == ((void*)0)) {
  pf_flush_fragments();
  frent = uma_zalloc(V_pf_frent_z, M_NOWAIT);
  if (frent == ((void*)0)) {
   REASON_SET(reason, PFRES_MEMORY);
   return (((void*)0));
  }
 }

 return (frent);
}
