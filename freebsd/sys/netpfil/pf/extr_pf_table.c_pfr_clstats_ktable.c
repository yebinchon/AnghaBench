
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfr_ktable {long pfrkt_tzero; int pfrkt_nomatch; int pfrkt_match; int ** pfrkt_bytes; int ** pfrkt_packets; } ;
struct pfr_kentryworkq {int dummy; } ;


 int PFR_DIR_MAX ;
 int PFR_OP_TABLE_MAX ;
 int counter_u64_zero (int ) ;
 int pfr_clstats_kentries (struct pfr_kentryworkq*,long,int ) ;
 int pfr_enqueue_addrs (struct pfr_ktable*,struct pfr_kentryworkq*,int *,int ) ;

__attribute__((used)) static void
pfr_clstats_ktable(struct pfr_ktable *kt, long tzero, int recurse)
{
 struct pfr_kentryworkq addrq;
 int pfr_dir, pfr_op;

 if (recurse) {
  pfr_enqueue_addrs(kt, &addrq, ((void*)0), 0);
  pfr_clstats_kentries(&addrq, tzero, 0);
 }
 for (pfr_dir = 0; pfr_dir < PFR_DIR_MAX; pfr_dir ++) {
  for (pfr_op = 0; pfr_op < PFR_OP_TABLE_MAX; pfr_op ++) {
   counter_u64_zero(kt->pfrkt_packets[pfr_dir][pfr_op]);
   counter_u64_zero(kt->pfrkt_bytes[pfr_dir][pfr_op]);
  }
 }
 counter_u64_zero(kt->pfrkt_match);
 counter_u64_zero(kt->pfrkt_nomatch);
 kt->pfrkt_tzero = tzero;
}
