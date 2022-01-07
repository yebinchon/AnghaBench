
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct wi_ssid {int wi_ssid; int wi_len; } ;
struct wi_softc {int dummy; } ;
typedef int ssid ;


 int ENOBUFS ;
 int IEEE80211_NWID_LEN ;
 int htole16 (int) ;
 int memcpy (int ,int *,int) ;
 int memset (struct wi_ssid*,int ,int) ;
 int wi_write_rid (struct wi_softc*,int,struct wi_ssid*,int) ;

__attribute__((used)) static int
wi_write_ssid(struct wi_softc *sc, int rid, u_int8_t *buf, int buflen)
{
 struct wi_ssid ssid;

 if (buflen > IEEE80211_NWID_LEN)
  return ENOBUFS;
 memset(&ssid, 0, sizeof(ssid));
 ssid.wi_len = htole16(buflen);
 memcpy(ssid.wi_ssid, buf, buflen);
 return wi_write_rid(sc, rid, &ssid, sizeof(ssid));
}
