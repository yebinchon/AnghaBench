
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int device_t ;


 int MV_GLOBAL_STATUS_REG ;
 int MV_STATUS_PHY_LINK_UP ;
 int MV_STATUS_RDLH_LINK_UP ;
 int pci_dw_dbi_rd4 (int ,int ) ;

__attribute__((used)) static int
pci_mv_get_link(device_t dev, bool *status)
{
 uint32_t reg;

 reg = pci_dw_dbi_rd4(dev, MV_GLOBAL_STATUS_REG);
 if ((reg & (MV_STATUS_RDLH_LINK_UP | MV_STATUS_PHY_LINK_UP)) ==
     (MV_STATUS_RDLH_LINK_UP | MV_STATUS_PHY_LINK_UP))
  *status = 1;
 else
  *status = 0;

 return (0);
}
