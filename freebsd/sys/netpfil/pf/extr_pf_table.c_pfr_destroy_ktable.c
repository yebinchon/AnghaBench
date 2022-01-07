
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pfr_ktable {int pfrkt_nomatch; int pfrkt_match; int ** pfrkt_bytes; int ** pfrkt_packets; TYPE_1__* pfrkt_rs; struct pfr_ktable* pfrkt_shadow; int * pfrkt_ip6; int * pfrkt_ip4; } ;
struct pfr_kentryworkq {int dummy; } ;
struct TYPE_2__ {int tables; } ;


 int M_PFTABLE ;
 int PFR_DIR_MAX ;
 int PFR_OP_TABLE_MAX ;
 int counter_u64_free (int ) ;
 int free (struct pfr_ktable*,int ) ;
 int pf_remove_if_empty_ruleset (TYPE_1__*) ;
 int pfr_clean_node_mask (struct pfr_ktable*,struct pfr_kentryworkq*) ;
 int pfr_destroy_kentries (struct pfr_kentryworkq*) ;
 int pfr_enqueue_addrs (struct pfr_ktable*,struct pfr_kentryworkq*,int *,int ) ;
 int rn_detachhead (void**) ;

__attribute__((used)) static void
pfr_destroy_ktable(struct pfr_ktable *kt, int flushaddr)
{
 struct pfr_kentryworkq addrq;
 int pfr_dir, pfr_op;

 if (flushaddr) {
  pfr_enqueue_addrs(kt, &addrq, ((void*)0), 0);
  pfr_clean_node_mask(kt, &addrq);
  pfr_destroy_kentries(&addrq);
 }
 if (kt->pfrkt_ip4 != ((void*)0))
  rn_detachhead((void **)&kt->pfrkt_ip4);
 if (kt->pfrkt_ip6 != ((void*)0))
  rn_detachhead((void **)&kt->pfrkt_ip6);
 if (kt->pfrkt_shadow != ((void*)0))
  pfr_destroy_ktable(kt->pfrkt_shadow, flushaddr);
 if (kt->pfrkt_rs != ((void*)0)) {
  kt->pfrkt_rs->tables--;
  pf_remove_if_empty_ruleset(kt->pfrkt_rs);
 }
 for (pfr_dir = 0; pfr_dir < PFR_DIR_MAX; pfr_dir ++) {
  for (pfr_op = 0; pfr_op < PFR_OP_TABLE_MAX; pfr_op ++) {
   counter_u64_free(kt->pfrkt_packets[pfr_dir][pfr_op]);
   counter_u64_free(kt->pfrkt_bytes[pfr_dir][pfr_op]);
  }
 }
 counter_u64_free(kt->pfrkt_match);
 counter_u64_free(kt->pfrkt_nomatch);

 free(kt, M_PFTABLE);
}
