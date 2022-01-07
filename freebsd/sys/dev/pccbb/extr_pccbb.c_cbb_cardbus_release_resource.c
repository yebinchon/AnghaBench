
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct cbb_softc {int dummy; } ;
typedef int device_t ;


 int BUS_RELEASE_RESOURCE (int ,int ,int,int,struct resource*) ;
 int RF_ACTIVE ;
 int bus_deactivate_resource (int ,int,int,struct resource*) ;
 int cbb_remove_res (struct cbb_softc*,struct resource*) ;
 int device_get_parent (int ) ;
 struct cbb_softc* device_get_softc (int ) ;
 int rman_get_flags (struct resource*) ;

__attribute__((used)) static int
cbb_cardbus_release_resource(device_t brdev, device_t child, int type,
    int rid, struct resource *res)
{
 struct cbb_softc *sc = device_get_softc(brdev);
 int error;

 if (rman_get_flags(res) & RF_ACTIVE) {
  error = bus_deactivate_resource(child, type, rid, res);
  if (error != 0)
   return (error);
 }
 cbb_remove_res(sc, res);
 return (BUS_RELEASE_RESOURCE(device_get_parent(brdev), child,
     type, rid, res));
}
