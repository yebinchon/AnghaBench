
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int device_t ;


 int MIIF_NOISOLATE ;
 int MIIF_NOMANPAUSE ;
 scalar_t__ mii_dev_mac_match (int ,char*) ;
 int mii_phy_dev_attach (int ,int ,int *,int) ;
 int nsphy_funcs ;

__attribute__((used)) static int
nsphy_attach(device_t dev)
{
 u_int flags;

 flags = MIIF_NOMANPAUSE;



 if (mii_dev_mac_match(dev,"pcn"))
  flags |= MIIF_NOISOLATE;
 mii_phy_dev_attach(dev, flags, &nsphy_funcs, 1);
 return (0);
}
