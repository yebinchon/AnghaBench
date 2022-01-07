
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
struct sample_node {int ratemask; TYPE_2__** stats; } ;
struct TYPE_8__ {int ni_flags; } ;
struct ath_node {TYPE_3__ an_node; } ;
struct TYPE_9__ {TYPE_1__* info; } ;
struct TYPE_7__ {int average_tx_time; scalar_t__ total_packets; int ewma_pct; int successive_failures; int packets_acked; } ;
struct TYPE_6__ {scalar_t__ phy; } ;
typedef TYPE_4__ HAL_RATE_TABLE ;


 struct sample_node* ATH_NODE_SAMPLE (struct ath_node*) ;
 int IEEE80211_NODE_HT ;
 scalar_t__ IEEE80211_T_HT ;

__attribute__((used)) static __inline int
pick_best_rate(struct ath_node *an, const HAL_RATE_TABLE *rt,
    int size_bin, int require_acked_before)
{
 struct sample_node *sn = ATH_NODE_SAMPLE(an);
        int best_rate_rix, best_rate_tt, best_rate_pct;
 uint64_t mask;
 int rix, tt, pct;

        best_rate_rix = 0;
        best_rate_tt = 0;
 best_rate_pct = 0;
 for (mask = sn->ratemask, rix = 0; mask != 0; mask >>= 1, rix++) {
  if ((mask & 1) == 0)
   continue;


  if ((an->an_node.ni_flags & IEEE80211_NODE_HT) &&
      (rt->info[rix].phy != IEEE80211_T_HT)) {
   continue;
  }

  tt = sn->stats[size_bin][rix].average_tx_time;
  if (tt <= 0 ||
      (require_acked_before &&
       !sn->stats[size_bin][rix].packets_acked))
   continue;


  if (sn->stats[size_bin][rix].total_packets > 0) {
   pct = sn->stats[size_bin][rix].ewma_pct;
  } else {

   pct = 95;
  }


  if (sn->stats[size_bin][rix].successive_failures > 3)
   continue;
  if (an->an_node.ni_flags & IEEE80211_NODE_HT) {
   if (best_rate_pct > (pct + 50))
    continue;
  }





  if (! (an->an_node.ni_flags & IEEE80211_NODE_HT)) {
   if (best_rate_tt == 0 || tt <= best_rate_tt) {
    best_rate_tt = tt;
    best_rate_rix = rix;
    best_rate_pct = pct;
   }
  }






  if (an->an_node.ni_flags & IEEE80211_NODE_HT) {
   if (best_rate_tt == 0 || (tt * 8 <= best_rate_tt * 10)) {
    best_rate_tt = tt;
    best_rate_rix = rix;
    best_rate_pct = pct;
   }
  }
        }
        return (best_rate_tt ? best_rate_rix : -1);
}
