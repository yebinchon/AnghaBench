
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int device_t ;


 int MDIO_WRITEREG (int ,int,int ,int ) ;
 int MII_ATH_MMD_ADDR ;
 int MII_ATH_MMD_DATA ;
 int device_get_parent (int ) ;

void
arswitch_writemmd(device_t dev, int phy, uint16_t dbg_addr,
    uint16_t dbg_data)
{
 (void) MDIO_WRITEREG(device_get_parent(dev), phy,
     MII_ATH_MMD_ADDR, dbg_addr);
 (void) MDIO_WRITEREG(device_get_parent(dev), phy,
     MII_ATH_MMD_DATA, dbg_data);
}
