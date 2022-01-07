
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ieee80211_appie {int ie_len; int ie_data; } ;


 int memcpy (int *,int ,int) ;

__attribute__((used)) static __inline uint8_t *
add_appie(uint8_t *frm, const struct ieee80211_appie *ie)
{
 memcpy(frm, ie->ie_data, ie->ie_len);
 return frm + ie->ie_len;
}
