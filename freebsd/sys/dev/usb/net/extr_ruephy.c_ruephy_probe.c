
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_get_name (int ) ;
 int device_get_parent (int ) ;
 int mii_phy_dev_probe (int ,int ,int ) ;
 int ruephys ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int
ruephy_probe(device_t dev)
{

 if (strcmp(device_get_name(device_get_parent(device_get_parent(dev))),
     "rue") == 0)
  return (mii_phy_dev_probe(dev, ruephys, BUS_PROBE_DEFAULT));
 return (ENXIO);
}
