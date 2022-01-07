
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpi_buf {int * m; } ;
struct wpi_vap {struct wpi_buf wv_bcbuf; } ;
struct ieee80211vap {int iv_opmode; } ;
typedef enum ieee80211_opmode { ____Placeholder_ieee80211_opmode } ieee80211_opmode ;


 int IEEE80211_M_HOSTAP ;
 int IEEE80211_M_IBSS ;
 int M_80211_VAP ;
 struct wpi_vap* WPI_VAP (struct ieee80211vap*) ;
 int WPI_VAP_LOCK_DESTROY (struct wpi_vap*) ;
 int free (struct wpi_vap*,int ) ;
 int ieee80211_ratectl_deinit (struct ieee80211vap*) ;
 int ieee80211_vap_detach (struct ieee80211vap*) ;
 int m_freem (int *) ;

__attribute__((used)) static void
wpi_vap_delete(struct ieee80211vap *vap)
{
 struct wpi_vap *wvp = WPI_VAP(vap);
 struct wpi_buf *bcn = &wvp->wv_bcbuf;
 enum ieee80211_opmode opmode = vap->iv_opmode;

 ieee80211_ratectl_deinit(vap);
 ieee80211_vap_detach(vap);

 if (opmode == IEEE80211_M_IBSS || opmode == IEEE80211_M_HOSTAP) {
  if (bcn->m != ((void*)0))
   m_freem(bcn->m);

  WPI_VAP_LOCK_DESTROY(wvp);
 }

 free(wvp, M_80211_VAP);
}
