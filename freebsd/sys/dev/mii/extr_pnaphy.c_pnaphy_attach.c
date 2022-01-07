
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int MIIF_IS_HPNA ;
 int MIIF_NOISOLATE ;
 int MIIF_NOMANPAUSE ;
 int mii_phy_dev_attach (int ,int,int *,int) ;
 int pnaphy_funcs ;

__attribute__((used)) static int
pnaphy_attach(device_t dev)
{

 mii_phy_dev_attach(dev, MIIF_NOISOLATE | MIIF_IS_HPNA |
    MIIF_NOMANPAUSE, &pnaphy_funcs, 1);
 return (0);
}
