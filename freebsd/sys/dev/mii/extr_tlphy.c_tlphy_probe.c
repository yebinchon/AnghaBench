
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int mii_dev_mac_match (int ,char*) ;
 int mii_phy_dev_probe (int ,int ,int ) ;
 int tlphys ;

__attribute__((used)) static int
tlphy_probe(device_t dev)
{

 if (!mii_dev_mac_match(dev, "tl"))
  return (ENXIO);
 return (mii_phy_dev_probe(dev, tlphys, BUS_PROBE_DEFAULT));
}
