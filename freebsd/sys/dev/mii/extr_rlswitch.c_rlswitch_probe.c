
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int mii_phy_dev_probe (int ,int ,int ) ;
 int rlswitches ;

__attribute__((used)) static int
rlswitch_probe(device_t dev)
{
 int rv;

 rv = mii_phy_dev_probe(dev, rlswitches, BUS_PROBE_DEFAULT);
 if (rv <= 0)
  return (rv);

 return (ENXIO);
}
