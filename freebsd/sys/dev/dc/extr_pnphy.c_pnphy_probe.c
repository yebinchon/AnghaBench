
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_attach_args {scalar_t__ mii_id1; scalar_t__ mii_id2; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 scalar_t__ DC_DEVICEID_82C168 ;
 scalar_t__ DC_VENDORID_LO ;
 int ENXIO ;
 struct mii_attach_args* device_get_ivars (int ) ;
 int device_set_desc (int ,char*) ;

__attribute__((used)) static int
pnphy_probe(device_t dev)
{
 struct mii_attach_args *ma;

 ma = device_get_ivars(dev);





 if (ma->mii_id1 != DC_VENDORID_LO ||
     ma->mii_id2 != DC_DEVICEID_82C168)
  return (ENXIO);

 device_set_desc(dev, "PNIC 82c168 media interface");

 return (BUS_PROBE_DEFAULT);
}
