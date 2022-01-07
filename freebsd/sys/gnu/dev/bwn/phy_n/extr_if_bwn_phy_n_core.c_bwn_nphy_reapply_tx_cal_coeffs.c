
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_4__ {scalar_t__ center_freq; scalar_t__ channel_type; } ;
struct bwn_phy_n {scalar_t__* txiqlocal_bestc; TYPE_2__ txiqlocal_chanspec; int txiqlocal_coeffsvalid; } ;
struct TYPE_3__ {struct bwn_phy_n* phy_n; } ;
struct bwn_mac {TYPE_1__ mac_phy; } ;


 int BWN_NTAB16 (int,int) ;
 scalar_t__ bwn_get_centre_freq (struct bwn_mac*) ;
 scalar_t__ bwn_get_chan_type (struct bwn_mac*,int *) ;
 int bwn_ntab_read_bulk (struct bwn_mac*,int ,int,scalar_t__*) ;
 int bwn_ntab_write_bulk (struct bwn_mac*,int ,int,scalar_t__*) ;

__attribute__((used)) static void bwn_nphy_reapply_tx_cal_coeffs(struct bwn_mac *mac)
{
 struct bwn_phy_n *nphy = mac->mac_phy.phy_n;
 uint8_t i;
 uint16_t buffer[7];
 bool equal = 1;

 if (!nphy->txiqlocal_coeffsvalid ||
     nphy->txiqlocal_chanspec.center_freq != bwn_get_centre_freq(mac) ||
     nphy->txiqlocal_chanspec.channel_type != bwn_get_chan_type(mac, ((void*)0)))
  return;

 bwn_ntab_read_bulk(mac, BWN_NTAB16(15, 80), 7, buffer);
 for (i = 0; i < 4; i++) {
  if (buffer[i] != nphy->txiqlocal_bestc[i]) {
   equal = 0;
   break;
  }
 }

 if (!equal) {
  bwn_ntab_write_bulk(mac, BWN_NTAB16(15, 80), 4,
     nphy->txiqlocal_bestc);
  for (i = 0; i < 4; i++)
   buffer[i] = 0;
  bwn_ntab_write_bulk(mac, BWN_NTAB16(15, 88), 4,
     buffer);
  bwn_ntab_write_bulk(mac, BWN_NTAB16(15, 85), 2,
     &nphy->txiqlocal_bestc[5]);
  bwn_ntab_write_bulk(mac, BWN_NTAB16(15, 93), 2,
     &nphy->txiqlocal_bestc[5]);
 }
}
