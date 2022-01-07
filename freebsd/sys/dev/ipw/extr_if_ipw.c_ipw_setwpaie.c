
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wpaie ;
struct ipw_wpa_ie {int ie; int len; } ;
struct ipw_softc {int dummy; } ;


 int DPRINTF (char*) ;
 int IPW_CMD_SET_WPA_IE ;
 int htole32 (int) ;
 int ipw_cmd (struct ipw_softc*,int ,struct ipw_wpa_ie*,int) ;
 int memcpy (int *,void const*,int) ;
 int memset (struct ipw_wpa_ie*,int ,int) ;

__attribute__((used)) static int
ipw_setwpaie(struct ipw_softc *sc, const void *ie, int ielen)
{
 struct ipw_wpa_ie wpaie;

 memset(&wpaie, 0, sizeof(wpaie));
 wpaie.len = htole32(ielen);

 memcpy(&wpaie.ie, ie, ielen);
 DPRINTF(("Setting WPA IE\n"));
 return ipw_cmd(sc, IPW_CMD_SET_WPA_IE, &wpaie, sizeof(wpaie));
}
