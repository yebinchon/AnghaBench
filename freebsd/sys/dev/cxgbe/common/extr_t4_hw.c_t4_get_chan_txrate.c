
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct adapter {TYPE_1__* chip_params; } ;
struct TYPE_2__ {int nchan; } ;


 int A_TP_TX_ORATE ;
 int A_TP_TX_TRATE ;
 int G_OFDRATE0 (int ) ;
 int G_OFDRATE1 (int ) ;
 int G_OFDRATE2 (int ) ;
 int G_OFDRATE3 (int ) ;
 int G_TNLRATE0 (int ) ;
 int G_TNLRATE1 (int ) ;
 int G_TNLRATE2 (int ) ;
 int G_TNLRATE3 (int ) ;
 int chan_rate (struct adapter*,int ) ;
 int t4_read_reg (struct adapter*,int ) ;

void t4_get_chan_txrate(struct adapter *adap, u64 *nic_rate, u64 *ofld_rate)
{
 u32 v;

 v = t4_read_reg(adap, A_TP_TX_TRATE);
 nic_rate[0] = chan_rate(adap, G_TNLRATE0(v));
 nic_rate[1] = chan_rate(adap, G_TNLRATE1(v));
 if (adap->chip_params->nchan > 2) {
  nic_rate[2] = chan_rate(adap, G_TNLRATE2(v));
  nic_rate[3] = chan_rate(adap, G_TNLRATE3(v));
 }

 v = t4_read_reg(adap, A_TP_TX_ORATE);
 ofld_rate[0] = chan_rate(adap, G_OFDRATE0(v));
 ofld_rate[1] = chan_rate(adap, G_OFDRATE1(v));
 if (adap->chip_params->nchan > 2) {
  ofld_rate[2] = chan_rate(adap, G_OFDRATE2(v));
  ofld_rate[3] = chan_rate(adap, G_OFDRATE3(v));
 }
}
