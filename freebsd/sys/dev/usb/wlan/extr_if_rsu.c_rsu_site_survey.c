
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsu_softc {int sc_extra_scan; int sc_dev; scalar_t__ sc_active_scan; } ;
struct r92s_fw_cmd_sitesurvey {void* ssidlen; int ssid; void* active; void* limit; } ;
struct ieee80211_scan_ssid {int len; int ssid; } ;
typedef int cmd ;


 int R92S_CMD_SITE_SURVEY ;
 int RSU_ASSERT_LOCKED (struct rsu_softc*) ;
 int RSU_DEBUG_FWCMD ;
 int RSU_DEBUG_SCAN ;
 int device_printf (int ,char*,int ) ;
 void* htole32 (int) ;
 int ieee80211_print_essid (int ,int ) ;
 int le32toh (void*) ;
 int memcpy (int ,int ,int) ;
 int memset (struct r92s_fw_cmd_sitesurvey*,int ,int) ;
 int printf (char*) ;
 int rsu_debug ;
 int rsu_fw_cmd (struct rsu_softc*,int ,struct r92s_fw_cmd_sitesurvey*,int) ;

__attribute__((used)) static int
rsu_site_survey(struct rsu_softc *sc, struct ieee80211_scan_ssid *ssid)
{
 struct r92s_fw_cmd_sitesurvey cmd;

 RSU_ASSERT_LOCKED(sc);

 memset(&cmd, 0, sizeof(cmd));

 if (sc->sc_active_scan)
  cmd.active = htole32(1);
 cmd.limit = htole32(48);

 if (ssid != ((void*)0)) {
  sc->sc_extra_scan = 1;
  cmd.ssidlen = htole32(ssid->len);
  memcpy(cmd.ssid, ssid->ssid, ssid->len);
 }
 return (rsu_fw_cmd(sc, R92S_CMD_SITE_SURVEY, &cmd, sizeof(cmd)));
}
