
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mbuf {int dummy; } ;
struct ieee80211_node {int ni_txpower; TYPE_1__* ni_txparms; } ;
struct ieee80211_bpf_params {int ibp_power; int ibp_try0; int ibp_rate0; int ibp_pri; } ;
typedef int params ;
struct TYPE_2__ {int maxretry; int mgmtrate; } ;


 int IEEE80211_FC0_SUBTYPE_ACTION ;
 int WME_AC_VO ;
 int ieee80211_mgmt_output (struct ieee80211_node*,struct mbuf*,int ,struct ieee80211_bpf_params*) ;
 int memset (struct ieee80211_bpf_params*,int ,int) ;

__attribute__((used)) static int
ht_action_output(struct ieee80211_node *ni, struct mbuf *m)
{
 struct ieee80211_bpf_params params;

 memset(&params, 0, sizeof(params));
 params.ibp_pri = WME_AC_VO;
 params.ibp_rate0 = ni->ni_txparms->mgmtrate;

 params.ibp_try0 = ni->ni_txparms->maxretry;
 params.ibp_power = ni->ni_txpower;
 return ieee80211_mgmt_output(ni, m, IEEE80211_FC0_SUBTYPE_ACTION,
      &params);
}
