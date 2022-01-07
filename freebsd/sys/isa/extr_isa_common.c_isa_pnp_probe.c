
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isa_pnp_id {scalar_t__ ip_id; scalar_t__ ip_desc; } ;
struct isa_device {scalar_t__ id_logicalid; scalar_t__ id_compatid; int id_vendorid; } ;
typedef int device_t ;


 struct isa_device* DEVTOISA (int ) ;
 int ENOENT ;
 int ENXIO ;
 int device_set_desc (int ,scalar_t__) ;

__attribute__((used)) static int
isa_pnp_probe(device_t dev, device_t child, struct isa_pnp_id *ids)
{
 struct isa_device* idev = DEVTOISA(child);

 if (!idev->id_vendorid)
  return (ENOENT);

 while (ids && ids->ip_id) {



  if (idev->id_logicalid == ids->ip_id
      || idev->id_compatid == ids->ip_id) {
   if (ids->ip_desc)
    device_set_desc(child, ids->ip_desc);
   return (0);
  }
  ids++;
 }

 return (ENXIO);
}
