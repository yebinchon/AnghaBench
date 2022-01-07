
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwn_phy_n_iq_comp {void* b1; void* a1; void* b0; void* a0; } ;
struct bwn_mac {int dummy; } ;


 int BWN_NPHY_C1_RXIQ_COMPA0 ;
 int BWN_NPHY_C1_RXIQ_COMPB0 ;
 int BWN_NPHY_C2_RXIQ_COMPA1 ;
 int BWN_NPHY_C2_RXIQ_COMPB1 ;
 void* BWN_PHY_READ (struct bwn_mac*,int ) ;
 int BWN_PHY_WRITE (struct bwn_mac*,int ,void*) ;

__attribute__((used)) static void bwn_nphy_rx_iq_coeffs(struct bwn_mac *mac, bool write,
     struct bwn_phy_n_iq_comp *pcomp)
{
 if (write) {
  BWN_PHY_WRITE(mac, BWN_NPHY_C1_RXIQ_COMPA0, pcomp->a0);
  BWN_PHY_WRITE(mac, BWN_NPHY_C1_RXIQ_COMPB0, pcomp->b0);
  BWN_PHY_WRITE(mac, BWN_NPHY_C2_RXIQ_COMPA1, pcomp->a1);
  BWN_PHY_WRITE(mac, BWN_NPHY_C2_RXIQ_COMPB1, pcomp->b1);
 } else {
  pcomp->a0 = BWN_PHY_READ(mac, BWN_NPHY_C1_RXIQ_COMPA0);
  pcomp->b0 = BWN_PHY_READ(mac, BWN_NPHY_C1_RXIQ_COMPB0);
  pcomp->a1 = BWN_PHY_READ(mac, BWN_NPHY_C2_RXIQ_COMPA1);
  pcomp->b1 = BWN_PHY_READ(mac, BWN_NPHY_C2_RXIQ_COMPB1);
 }
}
