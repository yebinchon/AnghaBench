
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct exca_softc {int dev; } ;
typedef int device_t ;


 int BUS_DEACTIVATE_RESOURCE (int ,int ,int,int,struct resource*) ;
 int ENOENT ;
 int RF_ACTIVE ;


 int device_get_parent (int ) ;
 int exca_io_unmap_res (struct exca_softc*,struct resource*) ;
 int exca_mem_unmap_res (struct exca_softc*,struct resource*) ;
 int rman_get_flags (struct resource*) ;

int
exca_deactivate_resource(struct exca_softc *exca, device_t child, int type,
    int rid, struct resource *res)
{
 if (rman_get_flags(res) & RF_ACTIVE) {
  switch (type) {
  case 129:
   if (exca_io_unmap_res(exca, res))
    return (ENOENT);
   break;
  case 128:
   if (exca_mem_unmap_res(exca, res))
    return (ENOENT);
   break;
  }
 }
 return (BUS_DEACTIVATE_RESOURCE(device_get_parent(exca->dev), child,
     type, rid, res));
}
