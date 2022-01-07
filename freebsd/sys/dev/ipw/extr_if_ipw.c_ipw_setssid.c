
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_softc {int dummy; } ;


 int DPRINTF (char*) ;
 int IEEE80211_NWID_LEN ;
 int IPW_CMD_SET_ESSID ;
 int ieee80211_print_essid (void*,size_t) ;
 int ipw_cmd (struct ipw_softc*,int ,void*,size_t) ;
 scalar_t__ ipw_debug ;
 int printf (char*) ;

__attribute__((used)) static int
ipw_setssid(struct ipw_softc *sc, void *ssid, size_t ssidlen)
{
 if (ssidlen == 0) {






  DPRINTF(("Setting bogus ESSID to WAR firmware bug\n"));
  return ipw_cmd(sc, IPW_CMD_SET_ESSID,
   "\x18\x19\x20\x21\x22\x23\x24\x25\x26\x27"
   "\x28\x29\x2a\x2b\x2c\x2d\x2e\x2f\x30\x31"
   "\x32\x33\x34\x35\x36\x37\x38\x39\x3a\x3b"
   "\x3c\x3d", IEEE80211_NWID_LEN);
 } else {







  return ipw_cmd(sc, IPW_CMD_SET_ESSID, ssid, ssidlen);
 }
}
