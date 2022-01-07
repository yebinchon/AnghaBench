
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct bwn_phy_n {int txrx_chain; } ;
struct TYPE_2__ {struct bwn_phy_n* phy_n; } ;
struct bwn_mac {TYPE_1__ mac_phy; } ;


 int BWN_NPHY_RFSEQCA ;
 int BWN_NPHY_RFSEQCA_RXEN ;
 int BWN_NPHY_RFSEQCA_TXEN ;
 int BWN_NPHY_RFSEQMODE ;
 int BWN_NPHY_RFSEQMODE_CAOVER ;
 int BWN_PHY_MASK (struct bwn_mac*,int ,int ) ;
 int BWN_PHY_SET (struct bwn_mac*,int ,int ) ;
 int BWN_PHY_SETMASK (struct bwn_mac*,int ,int,int) ;

__attribute__((used)) static void bwn_nphy_update_txrx_chain(struct bwn_mac *mac)
{
 struct bwn_phy_n *nphy = mac->mac_phy.phy_n;

 bool override = 0;
 uint16_t chain = 0x33;

 if (nphy->txrx_chain == 0) {
  chain = 0x11;
  override = 1;
 } else if (nphy->txrx_chain == 1) {
  chain = 0x22;
  override = 1;
 }

 BWN_PHY_SETMASK(mac, BWN_NPHY_RFSEQCA,
   ~(BWN_NPHY_RFSEQCA_TXEN | BWN_NPHY_RFSEQCA_RXEN),
   chain);

 if (override)
  BWN_PHY_SET(mac, BWN_NPHY_RFSEQMODE,
    BWN_NPHY_RFSEQMODE_CAOVER);
 else
  BWN_PHY_MASK(mac, BWN_NPHY_RFSEQMODE,
    ~BWN_NPHY_RFSEQMODE_CAOVER);
}
