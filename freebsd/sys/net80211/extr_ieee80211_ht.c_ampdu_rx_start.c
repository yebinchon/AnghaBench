
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_rx_ampdu {int rxa_flags; void* rxa_start; int rxa_wnd; } ;
struct ieee80211_node {int dummy; } ;


 int IEEE80211_AGGR_BAWMAX ;
 int IEEE80211_AGGR_RUNNING ;
 int IEEE80211_AGGR_XCHGPEND ;
 int IEEE80211_BAPS_BUFSIZ ;
 int IEEE80211_BASEQ_START ;
 void* MS (int,int ) ;
 int ampdu_rx_purge (struct ieee80211_rx_ampdu*) ;
 int memset (struct ieee80211_rx_ampdu*,int ,int) ;
 int min (int,int ) ;

__attribute__((used)) static int
ampdu_rx_start(struct ieee80211_node *ni, struct ieee80211_rx_ampdu *rap,
 int baparamset, int batimeout, int baseqctl)
{
 int bufsiz = MS(baparamset, IEEE80211_BAPS_BUFSIZ);

 if (rap->rxa_flags & IEEE80211_AGGR_RUNNING) {




  ampdu_rx_purge(rap);
 }
 memset(rap, 0, sizeof(*rap));
 rap->rxa_wnd = (bufsiz == 0) ?
     IEEE80211_AGGR_BAWMAX : min(bufsiz, IEEE80211_AGGR_BAWMAX);
 rap->rxa_start = MS(baseqctl, IEEE80211_BASEQ_START);
 rap->rxa_flags |= IEEE80211_AGGR_RUNNING | IEEE80211_AGGR_XCHGPEND;

 return 0;
}
