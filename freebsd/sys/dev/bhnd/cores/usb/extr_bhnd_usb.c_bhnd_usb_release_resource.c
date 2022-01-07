
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list_entry {int * res; } ;
struct resource {int dummy; } ;
struct bhnd_usb_softc {int dummy; } ;
typedef scalar_t__ device_t ;


 int BUS_DEACTIVATE_RESOURCE (scalar_t__,scalar_t__,int,int,struct resource*) ;
 int BUS_GET_RESOURCE_LIST (scalar_t__,scalar_t__) ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int bus_generic_rl_release_resource (scalar_t__,scalar_t__,int,int,struct resource*) ;
 scalar_t__ device_get_parent (scalar_t__) ;
 struct bhnd_usb_softc* device_get_softc (scalar_t__) ;
 struct resource_list_entry* resource_list_find (int ,int,int) ;
 int rman_get_flags (struct resource*) ;
 int rman_release_resource (struct resource*) ;

__attribute__((used)) static int
bhnd_usb_release_resource(device_t dev, device_t child, int type,
    int rid, struct resource *r)
{
 struct bhnd_usb_softc *sc;
 struct resource_list_entry *rle;
 bool passthrough;
 int error;

 sc = device_get_softc(dev);
 passthrough = (device_get_parent(child) != dev);



 if (type != SYS_RES_MEMORY) {
  return (bus_generic_rl_release_resource(dev, child, type, rid,
      r));
 }


 if (rman_get_flags(r) & RF_ACTIVE) {
  error = BUS_DEACTIVATE_RESOURCE(dev, child, type, rid, r);
  if (error)
   return (error);
 }

 if ((error = rman_release_resource(r)))
  return (error);

 if (!passthrough) {

  rle = resource_list_find(BUS_GET_RESOURCE_LIST(dev, child),
      type, rid);
  if (rle != ((void*)0))
   rle->res = ((void*)0);
 }

 return (0);
}
