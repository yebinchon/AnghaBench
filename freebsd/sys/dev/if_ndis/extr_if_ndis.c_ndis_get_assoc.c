
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct ieee80211com {scalar_t__ ic_opmode; int ic_vaps; } ;
struct ndis_softc {int ndis_dev; int ndis_link; struct ieee80211com ndis_ic; } ;
struct ieee80211vap {struct ieee80211_node* iv_bss; } ;
struct ieee80211_node {int ni_associd; } ;
struct TYPE_7__ {int nwbx_len; int nwbx_macaddr; } ;
typedef TYPE_1__ ndis_wlan_bssid_ex ;
typedef int ndis_80211_macaddr ;
struct TYPE_8__ {int nblx_items; int * nblx_bssid; } ;
typedef TYPE_2__ ndis_80211_bssid_list_ex ;
typedef int bssid ;


 int ENOENT ;
 int ENOMEM ;
 scalar_t__ IEEE80211_M_STA ;
 int M_NOWAIT ;
 int M_TEMP ;
 int OID_802_11_BSSID ;
 struct ieee80211vap* TAILQ_FIRST (int *) ;
 scalar_t__ bcmp (int ,int ,int) ;
 int bcopy (char*,char*,int) ;
 int device_printf (int ,char*) ;
 int free (TYPE_2__*,int ) ;
 TYPE_1__* malloc (int,int ,int ) ;
 int ndis_get_bssid_list (struct ndis_softc*,TYPE_2__**) ;
 int ndis_get_info (struct ndis_softc*,int ,int *,int*) ;

__attribute__((used)) static int
ndis_get_assoc(struct ndis_softc *sc, ndis_wlan_bssid_ex **assoc)
{
 struct ieee80211com *ic = &sc->ndis_ic;
 struct ieee80211vap *vap;
 struct ieee80211_node *ni;
 ndis_80211_bssid_list_ex *bl;
 ndis_wlan_bssid_ex *bs;
 ndis_80211_macaddr bssid;
 int i, len, error;

 if (!sc->ndis_link)
  return (ENOENT);

 len = sizeof(bssid);
 error = ndis_get_info(sc, OID_802_11_BSSID, &bssid, &len);
 if (error) {
  device_printf(sc->ndis_dev, "failed to get bssid\n");
  return (ENOENT);
 }

 vap = TAILQ_FIRST(&ic->ic_vaps);
 ni = vap->iv_bss;

 error = ndis_get_bssid_list(sc, &bl);
 if (error)
  return (error);

 bs = (ndis_wlan_bssid_ex *)&bl->nblx_bssid[0];
 for (i = 0; i < bl->nblx_items; i++) {
  if (bcmp(bs->nwbx_macaddr, bssid, sizeof(bssid)) == 0) {
   *assoc = malloc(bs->nwbx_len, M_TEMP, M_NOWAIT);
   if (*assoc == ((void*)0)) {
    free(bl, M_TEMP);
    return (ENOMEM);
   }
   bcopy((char *)bs, (char *)*assoc, bs->nwbx_len);
   free(bl, M_TEMP);
   if (ic->ic_opmode == IEEE80211_M_STA)
    ni->ni_associd = 1 | 0xc000;
   return (0);
  }
  bs = (ndis_wlan_bssid_ex *)((char *)bs + bs->nwbx_len);
 }

 free(bl, M_TEMP);
 return (ENOENT);
}
