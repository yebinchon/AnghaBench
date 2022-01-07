
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfr_kentry {int pfrke_counters; } ;


 int PFR_DIR_MAX ;
 int PFR_OP_ADDR_MAX ;
 int V_pfr_kentry_z ;
 int pfr_destroy_kentry_counter (int *,int,int) ;
 int uma_zfree (int ,struct pfr_kentry*) ;

__attribute__((used)) static void
pfr_destroy_kentry(struct pfr_kentry *ke)
{
 int pfr_dir, pfr_op;

 for (pfr_dir = 0; pfr_dir < PFR_DIR_MAX; pfr_dir ++)
  for (pfr_op = 0; pfr_op < PFR_OP_ADDR_MAX; pfr_op ++)
   pfr_destroy_kentry_counter(&ke->pfrke_counters,
       pfr_dir, pfr_op);

 uma_zfree(V_pfr_kentry_z, ke);
}
