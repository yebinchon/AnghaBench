
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int ;


 int IEEE80211_ELEMID_SSID ;
 int memcpy (int *,int const*,int) ;

__attribute__((used)) static u_int8_t *
ieee80211_add_ssid(u_int8_t *frm, const u_int8_t *ssid, u_int len)
{
 *frm++ = IEEE80211_ELEMID_SSID;
 *frm++ = len;
 memcpy(frm, ssid, len);
 return frm + len;
}
