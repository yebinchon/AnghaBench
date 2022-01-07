
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ieee80211com {int dummy; } ;
struct ipw_softc {struct ieee80211com sc_ic; } ;
struct ieee80211_channel {int dummy; } ;


 int DPRINTF (char*) ;
 int IPW_CMD_SET_CHANNEL ;
 int htole32 (int ) ;
 int ieee80211_chan2ieee (struct ieee80211com*,struct ieee80211_channel*) ;
 int ipw_cmd (struct ipw_softc*,int ,int *,int) ;
 int ipw_setcurchan (struct ipw_softc*,struct ieee80211_channel*) ;
 int le32toh (int ) ;

__attribute__((used)) static int
ipw_setchannel(struct ipw_softc *sc, struct ieee80211_channel *chan)
{
 struct ieee80211com *ic = &sc->sc_ic;
 uint32_t data;
 int error;

 data = htole32(ieee80211_chan2ieee(ic, chan));
 DPRINTF(("Setting channel to %u\n", le32toh(data)));
 error = ipw_cmd(sc, IPW_CMD_SET_CHANNEL, &data, sizeof data);
 if (error == 0)
  ipw_setcurchan(sc, chan);
 return error;
}
