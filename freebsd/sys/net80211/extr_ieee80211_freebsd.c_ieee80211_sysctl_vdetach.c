
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {int * iv_sysctl; } ;


 int IEEE80211_FREE (int *,int ) ;
 int M_DEVBUF ;
 int sysctl_ctx_free (int *) ;

void
ieee80211_sysctl_vdetach(struct ieee80211vap *vap)
{

 if (vap->iv_sysctl != ((void*)0)) {
  sysctl_ctx_free(vap->iv_sysctl);
  IEEE80211_FREE(vap->iv_sysctl, M_DEVBUF);
  vap->iv_sysctl = ((void*)0);
 }
}
