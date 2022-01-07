
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct resource_spec {int type; int flags; int rid; } ;
struct bhnd_resource {int dummy; } ;
typedef int device_t ;


 int ENXIO ;
 int RF_OPTIONAL ;
 struct bhnd_resource* bhnd_alloc_resource_any (int ,int,int *,int) ;
 int bhnd_release_resources (int ,struct resource_spec*,struct bhnd_resource**) ;

int
bhnd_alloc_resources(device_t dev, struct resource_spec *rs,
    struct bhnd_resource **res)
{

 for (u_int i = 0; rs[i].type != -1; i++)
  res[i] = ((void*)0);

 for (u_int i = 0; rs[i].type != -1; i++) {
  res[i] = bhnd_alloc_resource_any(dev, rs[i].type, &rs[i].rid,
      rs[i].flags);


  if (res[i] == ((void*)0) && !(rs[i].flags & RF_OPTIONAL)) {
   bhnd_release_resources(dev, rs, res);
   return (ENXIO);
  }
 }

 return (0);
}
