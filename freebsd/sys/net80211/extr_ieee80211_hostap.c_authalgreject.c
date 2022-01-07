
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int is_rx_auth_unsupported; } ;
struct ieee80211vap {TYPE_1__ iv_stats; } ;
struct ieee80211_node {struct ieee80211vap* ni_vap; } ;
struct ieee80211_frame {int i_addr2; } ;


 int IEEE80211_DISCARD (struct ieee80211vap*,int ,struct ieee80211_frame const*,int *,char*,int) ;
 int IEEE80211_FC0_SUBTYPE_AUTH ;
 int IEEE80211_MSG_ANY ;
 int ieee80211_send_error (struct ieee80211_node*,int ,int ,int) ;

__attribute__((used)) static void
authalgreject(struct ieee80211_node *ni, const struct ieee80211_frame *wh,
 int algo, int seq, int status)
{
 struct ieee80211vap *vap = ni->ni_vap;

 IEEE80211_DISCARD(vap, IEEE80211_MSG_ANY,
     wh, ((void*)0), "unsupported alg %d", algo);
 vap->iv_stats.is_rx_auth_unsupported++;
 ieee80211_send_error(ni, wh->i_addr2, IEEE80211_FC0_SUBTYPE_AUTH,
     seq | (status << 16));
}
