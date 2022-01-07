
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int device_t ;


 int E6000SW_SERDES_DEV ;
 int E6000SW_SERDES_PCS_CTL1 ;
 int E6000SW_SERDES_PDOWN ;
 int E6000SW_SERDES_SGMII_CTL ;
 int e6000sw_read_xmdio (int ,int,int ,int ) ;
 int e6000sw_write_xmdio (int ,int,int ,int ,int ) ;

__attribute__((used)) static void
e6000sw_serdes_power(device_t dev, int port, bool sgmii)
{
 uint32_t reg;


 reg = e6000sw_read_xmdio(dev, port, E6000SW_SERDES_DEV,
     E6000SW_SERDES_SGMII_CTL);
 if (sgmii)
  reg &= ~E6000SW_SERDES_PDOWN;
 else
  reg |= E6000SW_SERDES_PDOWN;
 e6000sw_write_xmdio(dev, port, E6000SW_SERDES_DEV,
     E6000SW_SERDES_SGMII_CTL, reg);


 reg = e6000sw_read_xmdio(dev, port, E6000SW_SERDES_DEV,
     E6000SW_SERDES_PCS_CTL1);
 if (sgmii)
  reg |= E6000SW_SERDES_PDOWN;
 else
  reg &= ~E6000SW_SERDES_PDOWN;
 e6000sw_write_xmdio(dev, port, E6000SW_SERDES_DEV,
     E6000SW_SERDES_PCS_CTL1, reg);
}
