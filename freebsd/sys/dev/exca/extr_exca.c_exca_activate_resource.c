
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct exca_softc {int dev; } ;
typedef int device_t ;


 int BUS_ACTIVATE_RESOURCE (int ,int ,int,int,struct resource*) ;
 int BUS_DEACTIVATE_RESOURCE (int ,int ,int,int,struct resource*) ;
 int PCCARD_WIDTH_AUTO ;
 int RF_ACTIVE ;


 int device_get_parent (int ) ;
 int exca_io_map (struct exca_softc*,int ,struct resource*) ;
 int exca_mem_map (struct exca_softc*,int ,struct resource*) ;
 int rman_get_flags (struct resource*) ;

int
exca_activate_resource(struct exca_softc *exca, device_t child, int type,
    int rid, struct resource *res)
{
 int err;

 if (rman_get_flags(res) & RF_ACTIVE)
  return (0);
 err = BUS_ACTIVATE_RESOURCE(device_get_parent(exca->dev), child,
     type, rid, res);
 if (err)
  return (err);
 switch (type) {
 case 129:
  err = exca_io_map(exca, PCCARD_WIDTH_AUTO, res);
  break;
 case 128:
  err = exca_mem_map(exca, 0, res);
  break;
 }
 if (err)
  BUS_DEACTIVATE_RESOURCE(device_get_parent(exca->dev), child,
      type, rid, res);
 return (err);
}
