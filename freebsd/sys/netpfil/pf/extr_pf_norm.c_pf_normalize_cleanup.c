
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int V_pf_frag_z ;
 int V_pf_frent_z ;
 int V_pf_state_scrub_z ;
 int uma_zdestroy (int ) ;

void
pf_normalize_cleanup(void)
{

 uma_zdestroy(V_pf_state_scrub_z);
 uma_zdestroy(V_pf_frent_z);
 uma_zdestroy(V_pf_frag_z);
}
