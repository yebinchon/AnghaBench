
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct wi_softc {int dummy; } ;
struct ieee80211_appie {int ie_len; int ie_data; } ;


 int EINVAL ;
 int htole16 (int) ;
 int memcpy (char*,int ,int) ;
 int wi_write_rid (struct wi_softc*,int,char*,int) ;

__attribute__((used)) static int
wi_write_appie(struct wi_softc *sc, int rid, const struct ieee80211_appie *ie)
{

 char buf[sizeof(uint16_t) + 40];

 if (ie->ie_len > 40)
  return EINVAL;

 *(uint16_t *) buf = htole16(ie->ie_len);
 memcpy(buf + sizeof(uint16_t), ie->ie_data, ie->ie_len);
 return wi_write_rid(sc, rid, buf, ie->ie_len + sizeof(uint16_t));
}
