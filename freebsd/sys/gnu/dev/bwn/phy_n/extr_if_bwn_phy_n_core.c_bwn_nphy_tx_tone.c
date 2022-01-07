
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct bwn_mac {int dummy; } ;


 scalar_t__ bwn_nphy_gen_load_samples (struct bwn_mac*,int ,scalar_t__,int) ;
 int bwn_nphy_run_samples (struct bwn_mac*,scalar_t__,int,int ,int,int,int) ;

__attribute__((used)) static int bwn_nphy_tx_tone(struct bwn_mac *mac, uint32_t freq, uint16_t max_val,
       bool iqmode, bool dac_test, bool modify_bbmult)
{
 uint16_t samp = bwn_nphy_gen_load_samples(mac, freq, max_val, dac_test);
 if (samp == 0)
  return -1;
 bwn_nphy_run_samples(mac, samp, 0xFFFF, 0, iqmode, dac_test,
        modify_bbmult);
 return 0;
}
