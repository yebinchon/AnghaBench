
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UINT_MAX ;
 int pf_hashmask ;
 int pf_purge_expired_src_nodes () ;
 int pf_purge_expired_states (int ,int ) ;
 int pf_purge_fragments (int ) ;
 int pf_purge_unlinked_rules () ;
 int pfi_kif_purge () ;

void
pf_unload_vnet_purge(void)
{







 pf_purge_unlinked_rules();
 pfi_kif_purge();




 pf_purge_expired_states(0, pf_hashmask);
 pf_purge_fragments(UINT_MAX);
 pf_purge_expired_src_nodes();





 pf_purge_unlinked_rules();
 pfi_kif_purge();
}
