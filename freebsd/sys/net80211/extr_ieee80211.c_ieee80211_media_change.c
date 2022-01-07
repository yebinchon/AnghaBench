
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct ifnet {struct ieee80211vap* if_softc; } ;
struct ifmedia_entry {int dummy; } ;
struct TYPE_2__ {struct ifmedia_entry* ifm_cur; } ;
struct ieee80211vap {scalar_t__ iv_des_mode; int iv_flags; TYPE_1__ iv_media; } ;


 int EINVAL ;
 int media2mode (struct ifmedia_entry*,int ,scalar_t__*) ;

int
ieee80211_media_change(struct ifnet *ifp)
{
 struct ieee80211vap *vap = ifp->if_softc;
 struct ifmedia_entry *ime = vap->iv_media.ifm_cur;
 uint16_t newmode;

 if (!media2mode(ime, vap->iv_flags, &newmode))
  return EINVAL;
 if (vap->iv_des_mode != newmode) {
  vap->iv_des_mode = newmode;

 }
 return 0;
}
