
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BMCR_PDOWN ;
 int BMCR_STARTNEG ;
 scalar_t__ KSZ8995MA_PC12_BASE ;
 scalar_t__ KSZ8995MA_PC13_BASE ;
 int KSZ8995MA_PDOWN ;
 int KSZ8995MA_PORT_SIZE ;
 int KSZ8995MA_STARTNEG ;
 int MII_ANAR ;
 int MII_BMCR ;
 int ksz8995ma_readreg (int ,scalar_t__) ;
 int ksz8995ma_writereg (int ,scalar_t__,int) ;

__attribute__((used)) static int
ksz8995ma_writephy(device_t dev, int phy, int reg, int data)
{
int portreg;





 if (reg == MII_BMCR) {
  portreg = ksz8995ma_readreg(dev, KSZ8995MA_PC13_BASE +
   KSZ8995MA_PORT_SIZE * phy);
  if (data & BMCR_PDOWN)
   portreg |= KSZ8995MA_PDOWN;
  else
   portreg &= ~KSZ8995MA_PDOWN;
  if (data & BMCR_STARTNEG)
   portreg |= KSZ8995MA_STARTNEG;
  else
   portreg &= ~KSZ8995MA_STARTNEG;
  ksz8995ma_writereg(dev, KSZ8995MA_PC13_BASE +
   KSZ8995MA_PORT_SIZE * phy, portreg);
 } else if (reg == MII_ANAR) {
  portreg = ksz8995ma_readreg(dev, KSZ8995MA_PC12_BASE +
   KSZ8995MA_PORT_SIZE * phy);
  portreg &= 0xf;
  portreg |= ((data >> 5) & 0x0f);
  ksz8995ma_writereg(dev, KSZ8995MA_PC12_BASE +
   KSZ8995MA_PORT_SIZE * phy, portreg);
 }
 return (0);
}
