
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ieee80211com {int ic_rxstream; int ic_txstream; int ic_htcaps; } ;


 int IEEE80211_HTCAP_CHWIDTH40 ;
 int IEEE80211_HTC_RXMCS32 ;
 int IEEE80211_HTC_RXUNEQUAL ;
 int IEEE80211_HTC_TXUNEQUAL ;
 int KASSERT (int,char*) ;
 int setbit (int*,int) ;

__attribute__((used)) static void
ieee80211_set_mcsset(struct ieee80211com *ic, uint8_t *frm)
{
 int i;
 uint8_t txparams;

 KASSERT((ic->ic_rxstream > 0 && ic->ic_rxstream <= 4),
     ("ic_rxstream %d out of range", ic->ic_rxstream));
 KASSERT((ic->ic_txstream > 0 && ic->ic_txstream <= 4),
     ("ic_txstream %d out of range", ic->ic_txstream));

 for (i = 0; i < ic->ic_rxstream * 8; i++)
  setbit(frm, i);
 if ((ic->ic_htcaps & IEEE80211_HTCAP_CHWIDTH40) &&
     (ic->ic_htcaps & IEEE80211_HTC_RXMCS32))
  setbit(frm, 32);
 if (ic->ic_htcaps & IEEE80211_HTC_RXUNEQUAL) {
  if (ic->ic_rxstream >= 2) {
   for (i = 33; i <= 38; i++)
    setbit(frm, i);
  }
  if (ic->ic_rxstream >= 3) {
   for (i = 39; i <= 52; i++)
    setbit(frm, i);
  }
  if (ic->ic_txstream >= 4) {
   for (i = 53; i <= 76; i++)
    setbit(frm, i);
  }
 }

 if (ic->ic_rxstream != ic->ic_txstream) {
  txparams = 0x1;
  txparams |= 0x2;
  txparams |= (ic->ic_txstream - 1) << 2;
  if (ic->ic_htcaps & IEEE80211_HTC_TXUNEQUAL)
   txparams |= 0x16;
 } else
  txparams = 0;
 frm[12] = txparams;
}
