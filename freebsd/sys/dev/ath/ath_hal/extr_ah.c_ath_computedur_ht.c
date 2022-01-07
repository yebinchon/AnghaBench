
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
typedef scalar_t__ HAL_BOOL ;


 int HT_LTF (int) ;
 int HT_L_LTF ;
 int HT_L_SIG ;
 int HT_L_STF ;
 size_t HT_RC_2_MCS (int) ;
 int HT_SIG ;
 int HT_STF ;
 int IEEE80211_RATE_MCS ;
 int KASSERT (int,char*) ;
 int OFDM_PLCP_BITS ;
 int howmany (int,int) ;
 int* ht20_bps ;
 int* ht40_bps ;

uint32_t
ath_computedur_ht(uint32_t frameLen, uint16_t rate, int streams,
    HAL_BOOL isht40, HAL_BOOL isShortGI)
{
 uint32_t bitsPerSymbol, numBits, numSymbols, txTime;

 KASSERT(rate & IEEE80211_RATE_MCS, ("not mcs %d", rate));
 KASSERT((rate &~ IEEE80211_RATE_MCS) < 31, ("bad mcs 0x%x", rate));

 if (isht40)
  bitsPerSymbol = ht40_bps[HT_RC_2_MCS(rate)];
 else
  bitsPerSymbol = ht20_bps[HT_RC_2_MCS(rate)];
 numBits = OFDM_PLCP_BITS + (frameLen << 3);
 numSymbols = howmany(numBits, bitsPerSymbol);
 if (isShortGI)
  txTime = ((numSymbols * 18) + 4) / 5;
 else
  txTime = numSymbols * 4;
 return txTime + HT_L_STF + HT_L_LTF +
     HT_L_SIG + HT_SIG + HT_STF + HT_LTF(streams);
}
