
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 scalar_t__ mii_dev_mac_match (int ,char*) ;
 int mii_phy_dev_probe (int ,int ,int ) ;
 int rlintphys ;
 int rlphys ;

__attribute__((used)) static int
rlphy_probe(device_t dev)
{
 int rv;

 rv = mii_phy_dev_probe(dev, rlphys, BUS_PROBE_DEFAULT);
 if (rv <= 0)
  return (rv);

 if (mii_dev_mac_match(dev, "rl") || mii_dev_mac_match(dev, "re"))
  return (mii_phy_dev_probe(dev, rlintphys, BUS_PROBE_DEFAULT));
 return (ENXIO);
}
