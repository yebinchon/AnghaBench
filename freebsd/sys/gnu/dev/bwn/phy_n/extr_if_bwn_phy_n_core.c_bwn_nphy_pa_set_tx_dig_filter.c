
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct bwn_mac {int dummy; } ;
typedef int int16_t ;


 int BWN_PHY_N (int ) ;
 int BWN_PHY_WRITE (struct bwn_mac*,int ,int const) ;

__attribute__((used)) static void bwn_nphy_pa_set_tx_dig_filter(struct bwn_mac *mac, uint16_t offset,
       const int16_t *filter)
{
 int i;

 offset = BWN_PHY_N(offset);

 for (i = 0; i < 15; i++, offset++)
  BWN_PHY_WRITE(mac, offset, filter[i]);
}
