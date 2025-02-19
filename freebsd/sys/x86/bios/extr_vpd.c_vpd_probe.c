
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef int device_t ;


 int ENOMEM ;
 int RES2VPD (struct resource*) ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 struct resource* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_release_resource (int ,int ,int,struct resource*) ;
 int device_printf (int ,char*) ;
 scalar_t__ vpd_cksum (int ) ;

__attribute__((used)) static int
vpd_probe (device_t dev)
{
 struct resource *res;
 int rid;
 int error;

 error = 0;
 rid = 0;
 res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid, RF_ACTIVE);
 if (res == ((void*)0)) {
  device_printf(dev, "Unable to allocate memory resource.\n");
  error = ENOMEM;
  goto bad;
 }

 if (vpd_cksum(RES2VPD(res)))
  device_printf(dev, "VPD checksum failed.  BIOS update may be required.\n");

bad:
 if (res)
  bus_release_resource(dev, SYS_RES_MEMORY, rid, res);
 return (error);
}
