
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_attach_args {int mii_phyno; } ;
typedef int device_t ;


 int BMSR_EXTSTAT ;
 int BMSR_MEDIAMASK ;
 int BUS_PROBE_LOW_PRIORITY ;
 int ENXIO ;
 int EXTSR_1000TFDX ;
 int EXTSR_1000THDX ;
 int EXTSR_1000XFDX ;
 int EXTSR_1000XHDX ;
 int MIIBUS_READREG (int ,int ,int ) ;
 int MII_BMSR ;
 int MII_EXTSR ;
 struct mii_attach_args* device_get_ivars (int ) ;
 int device_get_parent (int ) ;
 int device_set_desc (int ,char*) ;

__attribute__((used)) static int
gentbi_probe(device_t dev)
{
 device_t parent;
 struct mii_attach_args *ma;
 int bmsr, extsr;

 parent = device_get_parent(dev);
 ma = device_get_ivars(dev);







 bmsr = MIIBUS_READREG(parent, ma->mii_phyno, MII_BMSR);
 if ((bmsr & BMSR_EXTSTAT) == 0 || (bmsr & BMSR_MEDIAMASK) != 0)
  return (ENXIO);

 extsr = MIIBUS_READREG(parent, ma->mii_phyno, MII_EXTSR);
 if (extsr & (EXTSR_1000TFDX|EXTSR_1000THDX))
  return (ENXIO);

 if (extsr & (EXTSR_1000XFDX|EXTSR_1000XHDX)) {





  device_set_desc(dev, "Generic ten-bit interface");
  return (BUS_PROBE_LOW_PRIORITY);
 }

 return (ENXIO);
}
