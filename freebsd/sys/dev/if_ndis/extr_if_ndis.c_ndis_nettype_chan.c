
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int DPRINTF (char*) ;
 int IEEE80211_CHAN_A ;
 int IEEE80211_CHAN_B ;
 int IEEE80211_CHAN_FHSS ;
 int IEEE80211_CHAN_G ;





__attribute__((used)) static int
ndis_nettype_chan(uint32_t type)
{
 switch (type) {
 case 130: return (IEEE80211_CHAN_FHSS);
 case 131: return (IEEE80211_CHAN_B);
 case 128: return (IEEE80211_CHAN_A);
 case 129: return (IEEE80211_CHAN_G);
 }
 DPRINTF(("unknown channel nettype %d\n", type));
 return (IEEE80211_CHAN_B);
}
