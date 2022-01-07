
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int BUS_PROBE_LOW_PRIORITY ;
 int bmtphys_dp ;
 int bmtphys_lp ;
 int mii_phy_dev_probe (int ,int ,int ) ;

__attribute__((used)) static int
bmtphy_probe(device_t dev)
{
 int rval;


 rval = mii_phy_dev_probe(dev, bmtphys_lp, BUS_PROBE_LOW_PRIORITY);
 if (rval <= 0)
  return (rval);

 return (mii_phy_dev_probe(dev, bmtphys_dp, BUS_PROBE_DEFAULT));
}
