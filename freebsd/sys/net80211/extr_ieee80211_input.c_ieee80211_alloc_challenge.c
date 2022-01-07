
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ieee80211_node {int * ni_challenge; int ni_vap; } ;


 int IEEE80211_CHALLENGE_LEN ;
 scalar_t__ IEEE80211_MALLOC (int ,int ,int ) ;
 int IEEE80211_MSG_AUTH ;
 int IEEE80211_MSG_DEBUG ;
 int IEEE80211_M_NOWAIT ;
 int IEEE80211_NOTE (int ,int,struct ieee80211_node*,char*,char*) ;
 int M_80211_NODE ;

int
ieee80211_alloc_challenge(struct ieee80211_node *ni)
{
 if (ni->ni_challenge == ((void*)0))
  ni->ni_challenge = (uint32_t *)
      IEEE80211_MALLOC(IEEE80211_CHALLENGE_LEN,
        M_80211_NODE, IEEE80211_M_NOWAIT);
 if (ni->ni_challenge == ((void*)0)) {
  IEEE80211_NOTE(ni->ni_vap,
      IEEE80211_MSG_DEBUG | IEEE80211_MSG_AUTH, ni,
      "%s", "shared key challenge alloc failed");

 }
 return (ni->ni_challenge != ((void*)0));
}
