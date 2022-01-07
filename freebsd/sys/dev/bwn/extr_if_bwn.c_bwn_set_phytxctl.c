
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct bwn_mac {int dummy; } ;


 int BWN_SHARED ;
 int BWN_SHARED_ACKCTS_PHYCTL ;
 int BWN_SHARED_BEACON_PHYCTL ;
 int BWN_SHARED_PROBE_RESP_PHYCTL ;
 int BWN_TX_PHY_ANT01AUTO ;
 int BWN_TX_PHY_ENC_CCK ;
 int BWN_TX_PHY_TXPWR ;
 int bwn_shm_write_2 (struct bwn_mac*,int ,int ,int) ;

__attribute__((used)) static void
bwn_set_phytxctl(struct bwn_mac *mac)
{
 uint16_t ctl;

 ctl = (BWN_TX_PHY_ENC_CCK | BWN_TX_PHY_ANT01AUTO |
     BWN_TX_PHY_TXPWR);
 bwn_shm_write_2(mac, BWN_SHARED, BWN_SHARED_BEACON_PHYCTL, ctl);
 bwn_shm_write_2(mac, BWN_SHARED, BWN_SHARED_ACKCTS_PHYCTL, ctl);
 bwn_shm_write_2(mac, BWN_SHARED, BWN_SHARED_PROBE_RESP_PHYCTL, ctl);
}
