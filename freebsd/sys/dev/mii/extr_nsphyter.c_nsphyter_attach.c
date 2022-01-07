
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int MIIF_NOMANPAUSE ;
 int mii_phy_dev_attach (int ,int ,int *,int) ;
 int nsphyter_funcs ;

__attribute__((used)) static int
nsphyter_attach(device_t dev)
{

 mii_phy_dev_attach(dev, MIIF_NOMANPAUSE, &nsphyter_funcs, 1);
 return (0);
}
