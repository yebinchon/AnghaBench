
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct resource_spec {int type; int rid; } ;
struct bhnd_resource {int dummy; } ;
typedef int device_t ;


 int bhnd_release_resource (int ,int,int ,struct bhnd_resource*) ;

void
bhnd_release_resources(device_t dev, const struct resource_spec *rs,
    struct bhnd_resource **res)
{
 for (u_int i = 0; rs[i].type != -1; i++) {
  if (res[i] == ((void*)0))
   continue;

  bhnd_release_resource(dev, rs[i].type, rs[i].rid, res[i]);
  res[i] = ((void*)0);
 }
}
