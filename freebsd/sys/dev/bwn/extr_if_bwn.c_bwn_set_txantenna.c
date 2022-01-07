
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct bwn_mac {int dummy; } ;


 int BWN_SHARED ;
 int BWN_SHARED_ACKCTS_PHYCTL ;
 int BWN_SHARED_PROBE_RESP_PHYCTL ;
 int BWN_TX_PHY_ANT ;
 int bwn_ant2phy (int) ;
 int bwn_shm_read_2 (struct bwn_mac*,int ,int ) ;
 int bwn_shm_write_2 (struct bwn_mac*,int ,int ,int) ;

__attribute__((used)) static void
bwn_set_txantenna(struct bwn_mac *mac, int antenna)
{
 uint16_t ant;
 uint16_t tmp;

 ant = bwn_ant2phy(antenna);


 tmp = bwn_shm_read_2(mac, BWN_SHARED, BWN_SHARED_ACKCTS_PHYCTL);
 tmp = (tmp & ~BWN_TX_PHY_ANT) | ant;
 bwn_shm_write_2(mac, BWN_SHARED, BWN_SHARED_ACKCTS_PHYCTL, tmp);

 tmp = bwn_shm_read_2(mac, BWN_SHARED, BWN_SHARED_PROBE_RESP_PHYCTL);
 tmp = (tmp & ~BWN_TX_PHY_ANT) | ant;
 bwn_shm_write_2(mac, BWN_SHARED, BWN_SHARED_PROBE_RESP_PHYCTL, tmp);
}
