
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct wmeParams {int wmep_txopLimit; int wmep_logcwmax; int wmep_logcwmin; int wmep_aifsn; int wmep_acm; } ;
struct ieee80211vap {int dummy; } ;
struct TYPE_4__ {int acm; } ;
typedef TYPE_1__ paramType ;


 int IEEE80211_DPRINTF (struct ieee80211vap*,int ,char*,int ,char const*,int ,int ,int ,int ,int ) ;
 int IEEE80211_MSG_WME ;
 int _setifsparams (struct wmeParams*,TYPE_1__ const*) ;
 int * ieee80211_wme_acnames ;

__attribute__((used)) static void
setwmeparams(struct ieee80211vap *vap, const char *type, int ac,
 struct wmeParams *wmep, const paramType *phy)
{
 wmep->wmep_acm = phy->acm;
 _setifsparams(wmep, phy);

 IEEE80211_DPRINTF(vap, IEEE80211_MSG_WME,
     "set %s (%s) [acm %u aifsn %u logcwmin %u logcwmax %u txop %u]\n",
     ieee80211_wme_acnames[ac], type,
     wmep->wmep_acm, wmep->wmep_aifsn, wmep->wmep_logcwmin,
     wmep->wmep_logcwmax, wmep->wmep_txopLimit);
}
