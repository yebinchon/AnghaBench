
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BMSR_ACOMP ;
 int BMSR_LINK ;
 int KSZ8995MA_MII_AA ;
 int KSZ8995MA_MII_PHYID_H ;
 int KSZ8995MA_MII_PHYID_L ;
 int KSZ8995MA_MII_STAT ;
 scalar_t__ KSZ8995MA_PC12_BASE ;
 int KSZ8995MA_PORT_SIZE ;
 scalar_t__ KSZ8995MA_PS0_BASE ;
 int MII_ANAR ;
 int MII_ANLPAR ;
 int MII_BMSR ;
 int MII_PHYIDR1 ;
 int MII_PHYIDR2 ;
 int ksz8995ma_readreg (int ,scalar_t__) ;

__attribute__((used)) static int
ksz8995ma_readphy(device_t dev, int phy, int reg)
{
int portreg;





 if (reg == MII_BMSR) {
  portreg = ksz8995ma_readreg(dev, KSZ8995MA_PS0_BASE +
   KSZ8995MA_PORT_SIZE * phy);
  return (KSZ8995MA_MII_STAT |
      (portreg & 0x20 ? BMSR_LINK : 0x00) |
      (portreg & 0x40 ? BMSR_ACOMP : 0x00));
 } else if (reg == MII_PHYIDR1) {
  return (KSZ8995MA_MII_PHYID_H);
 } else if (reg == MII_PHYIDR2) {
  return (KSZ8995MA_MII_PHYID_L);
 } else if (reg == MII_ANAR) {
  portreg = ksz8995ma_readreg(dev, KSZ8995MA_PC12_BASE +
   KSZ8995MA_PORT_SIZE * phy);
  return (KSZ8995MA_MII_AA | (portreg & 0x0f) << 5);
 } else if (reg == MII_ANLPAR) {
  portreg = ksz8995ma_readreg(dev, KSZ8995MA_PS0_BASE +
   KSZ8995MA_PORT_SIZE * phy);
  return (((portreg & 0x0f) << 5) | 0x01);
 }

 return (0);
}
