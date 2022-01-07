
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct iwm_softc {int dummy; } ;
struct ieee80211_rateset {int dummy; } ;
struct TYPE_2__ {struct ieee80211_rateset ni_rates; } ;
struct iwm_node {TYPE_1__ in_ni; } ;


 int IEEE80211_RATE_BASIC ;
 int IWM_FIRST_CCK_RATE ;
 int IWM_FIRST_OFDM_RATE ;
 int IWM_LAST_CCK_RATE ;
 int IWM_LAST_NON_HT_RATE ;
 int IWM_RATE_11M_INDEX ;
 int IWM_RATE_12M_INDEX ;
 int IWM_RATE_24M_INDEX ;
 int IWM_RATE_2M_INDEX ;
 int IWM_RATE_5M_INDEX ;
 int IWM_RATE_BIT_MSK (int) ;
 int iwm_ridx2rate (struct ieee80211_rateset*,int) ;

__attribute__((used)) static void
iwm_mvm_ack_rates(struct iwm_softc *sc, int is2ghz,
 int *cck_rates, int *ofdm_rates, struct iwm_node *in)
{
 int lowest_present_ofdm = 100;
 int lowest_present_cck = 100;
 uint8_t cck = 0;
 uint8_t ofdm = 0;
 int i;
 struct ieee80211_rateset *rs = &in->in_ni.ni_rates;

 if (is2ghz) {
  for (i = IWM_FIRST_CCK_RATE; i <= IWM_LAST_CCK_RATE; i++) {
   if ((iwm_ridx2rate(rs, i) & IEEE80211_RATE_BASIC) == 0)
    continue;
   cck |= (1 << i);
   if (lowest_present_cck > i)
    lowest_present_cck = i;
  }
 }
 for (i = IWM_FIRST_OFDM_RATE; i <= IWM_LAST_NON_HT_RATE; i++) {
  if ((iwm_ridx2rate(rs, i) & IEEE80211_RATE_BASIC) == 0)
   continue;
  ofdm |= (1 << (i - IWM_FIRST_OFDM_RATE));
  if (lowest_present_ofdm > i)
   lowest_present_ofdm = i;
 }
 if (IWM_RATE_24M_INDEX < lowest_present_ofdm)
  ofdm |= IWM_RATE_BIT_MSK(24) >> IWM_FIRST_OFDM_RATE;
 if (IWM_RATE_12M_INDEX < lowest_present_ofdm)
  ofdm |= IWM_RATE_BIT_MSK(12) >> IWM_FIRST_OFDM_RATE;

 ofdm |= IWM_RATE_BIT_MSK(6) >> IWM_FIRST_OFDM_RATE;
 if (IWM_RATE_11M_INDEX < lowest_present_cck)
  cck |= IWM_RATE_BIT_MSK(11) >> IWM_FIRST_CCK_RATE;
 if (IWM_RATE_5M_INDEX < lowest_present_cck)
  cck |= IWM_RATE_BIT_MSK(5) >> IWM_FIRST_CCK_RATE;
 if (IWM_RATE_2M_INDEX < lowest_present_cck)
  cck |= IWM_RATE_BIT_MSK(2) >> IWM_FIRST_CCK_RATE;

 cck |= IWM_RATE_BIT_MSK(1) >> IWM_FIRST_CCK_RATE;

 *cck_rates = cck;
 *ofdm_rates = ofdm;
}
