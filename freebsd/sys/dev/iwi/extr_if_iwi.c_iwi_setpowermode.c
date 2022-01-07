
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct iwi_softc {int dummy; } ;
struct ieee80211vap {int iv_flags; } ;


 int DPRINTF (char*) ;
 int IEEE80211_F_PMGTON ;
 int IWI_CMD_SET_POWER_MODE ;
 int IWI_POWER_MODE_CAM ;
 int IWI_POWER_MODE_MAX ;
 int htole32 (int ) ;
 int iwi_cmd (struct iwi_softc*,int ,int *,int) ;
 int le32toh (int ) ;

__attribute__((used)) static int
iwi_setpowermode(struct iwi_softc *sc, struct ieee80211vap *vap)
{
 uint32_t data;

 if (vap->iv_flags & IEEE80211_F_PMGTON) {

  data = htole32(IWI_POWER_MODE_MAX);
 } else
  data = htole32(IWI_POWER_MODE_CAM);

 DPRINTF(("Setting power mode to %u\n", le32toh(data)));
 return iwi_cmd(sc, IWI_CMD_SET_POWER_MODE, &data, sizeof data);
}
