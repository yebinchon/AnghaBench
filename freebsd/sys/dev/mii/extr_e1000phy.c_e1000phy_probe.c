
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int e1000phys ;
 int mii_phy_dev_probe (int ,int ,int ) ;

__attribute__((used)) static int
e1000phy_probe(device_t dev)
{

 return (mii_phy_dev_probe(dev, e1000phys, BUS_PROBE_DEFAULT));
}
