
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_ratectl_tx_status {int long_retries; int status; int flags; } ;
struct ieee80211_node {int dummy; } ;
struct bwn_txstatus {int framecnt; scalar_t__ ack; } ;


 int IEEE80211_RATECTL_STATUS_LONG_RETRY ;
 int IEEE80211_RATECTL_TX_FAIL_UNSPECIFIED ;
 int IEEE80211_RATECTL_TX_SUCCESS ;
 int ieee80211_ratectl_tx_complete (struct ieee80211_node const*,struct ieee80211_ratectl_tx_status*) ;

__attribute__((used)) static void
bwn_ratectl_tx_complete(const struct ieee80211_node *ni,
    const struct bwn_txstatus *status)
{
 struct ieee80211_ratectl_tx_status txs;
 int retrycnt = 0;







 txs.flags = IEEE80211_RATECTL_STATUS_LONG_RETRY;
 if (status->ack) {
  txs.status = IEEE80211_RATECTL_TX_SUCCESS;
  retrycnt = status->framecnt - 1;
 } else {
  txs.status = IEEE80211_RATECTL_TX_FAIL_UNSPECIFIED;
  retrycnt = status->framecnt;
  if (retrycnt == 0)
   retrycnt = 1;
 }
 txs.long_retries = retrycnt;
 ieee80211_ratectl_tx_complete(ni, &txs);
}
