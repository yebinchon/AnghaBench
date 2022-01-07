
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int DPRINTF (char*) ;
 int IEEE80211_MODE_11A ;
 int IEEE80211_MODE_11B ;
 int IEEE80211_MODE_11G ;
 int IEEE80211_MODE_AUTO ;
 int IEEE80211_MODE_FH ;





__attribute__((used)) static int
ndis_nettype_mode(uint32_t type)
{
 switch (type) {
 case 130: return (IEEE80211_MODE_FH);
 case 131: return (IEEE80211_MODE_11B);
 case 128: return (IEEE80211_MODE_11A);
 case 129: return (IEEE80211_MODE_11G);
 }
 DPRINTF(("unknown mode nettype %d\n", type));
 return (IEEE80211_MODE_AUTO);
}
