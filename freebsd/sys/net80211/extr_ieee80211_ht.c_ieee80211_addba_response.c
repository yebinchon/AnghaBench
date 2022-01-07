
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_tx_ampdu {int txa_flags; scalar_t__ txa_attempts; int txa_wnd; } ;
struct ieee80211_node {int dummy; } ;


 int IEEE80211_AGGR_BAWMAX ;
 int IEEE80211_AGGR_NAK ;
 int IEEE80211_AGGR_RUNNING ;
 int IEEE80211_BAPS_BUFSIZ ;
 int IEEE80211_BAPS_TID ;
 int IEEE80211_STATUS_SUCCESS ;
 int MS (int,int ) ;
 int addba_stop_timeout (struct ieee80211_tx_ampdu*) ;
 int min (int,int ) ;

__attribute__((used)) static int
ieee80211_addba_response(struct ieee80211_node *ni,
 struct ieee80211_tx_ampdu *tap,
 int status, int baparamset, int batimeout)
{
 int bufsiz, tid;


 addba_stop_timeout(tap);
 if (status == IEEE80211_STATUS_SUCCESS) {
  bufsiz = MS(baparamset, IEEE80211_BAPS_BUFSIZ);

  tap->txa_wnd = (bufsiz == 0) ?
      IEEE80211_AGGR_BAWMAX : min(bufsiz, IEEE80211_AGGR_BAWMAX);

  tid = MS(baparamset, IEEE80211_BAPS_TID);
  tap->txa_flags |= IEEE80211_AGGR_RUNNING;
  tap->txa_attempts = 0;
 } else {

  tap->txa_flags |= IEEE80211_AGGR_NAK;
 }
 return 1;
}
