
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct bwn_mac {int dummy; } ;


 int BWN_NPHY_RFSEQCA ;
 int BWN_NPHY_RFSEQCA_RXEN ;
 int BWN_NPHY_RFSEQCA_RXEN_SHIFT ;
 int BWN_PHY_READ (struct bwn_mac*,int ) ;

__attribute__((used)) static uint8_t bwn_nphy_get_rx_core_state(struct bwn_mac *mac)
{
 return (BWN_PHY_READ(mac, BWN_NPHY_RFSEQCA) & BWN_NPHY_RFSEQCA_RXEN) >>
  BWN_NPHY_RFSEQCA_RXEN_SHIFT;
}
