
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ieee80211com {int dummy; } ;


 int ADDSHORT (int *,int ) ;
 int IEEE80211_ELEMID_CFPARMS ;

__attribute__((used)) static uint8_t *
ieee80211_add_cfparms(uint8_t *frm, struct ieee80211com *ic)
{




 *frm++ = IEEE80211_ELEMID_CFPARMS;
 *frm++ = 6;
 *frm++ = 0;
 *frm++ = 2;
 do { le16enc(frm, 0); frm += 2; } while (0);
 do { le16enc(frm, 0); frm += 2; } while (0);
 return frm;

}
