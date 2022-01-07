
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_tx_ampdu {int txa_token; int txa_wnd; int txa_flags; } ;
struct ieee80211_node {int dummy; } ;


 int IEEE80211_AGGR_BAWMAX ;
 int IEEE80211_AGGR_IMMEDIATE ;
 int IEEE80211_BAPS_BUFSIZ ;
 int MS (int,int ) ;
 int addba_start_timeout (struct ieee80211_tx_ampdu*) ;
 int min (int,int ) ;

__attribute__((used)) static int
ieee80211_addba_request(struct ieee80211_node *ni,
 struct ieee80211_tx_ampdu *tap,
 int dialogtoken, int baparamset, int batimeout)
{
 int bufsiz;


 tap->txa_token = dialogtoken;
 tap->txa_flags |= IEEE80211_AGGR_IMMEDIATE;
 bufsiz = MS(baparamset, IEEE80211_BAPS_BUFSIZ);
 tap->txa_wnd = (bufsiz == 0) ?
     IEEE80211_AGGR_BAWMAX : min(bufsiz, IEEE80211_AGGR_BAWMAX);
 addba_start_timeout(tap);
 return 1;
}
