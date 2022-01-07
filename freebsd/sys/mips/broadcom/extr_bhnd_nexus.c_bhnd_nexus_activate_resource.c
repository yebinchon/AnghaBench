
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_resource {int direct; int res; } ;
typedef int device_t ;


 int bus_activate_resource (int ,int,int,int ) ;

__attribute__((used)) static int
bhnd_nexus_activate_resource(device_t dev, device_t child, int type, int rid,
    struct bhnd_resource *r)
{
 int error;


 if ((error = bus_activate_resource(child, type, rid, r->res)))
  return (error);

 r->direct = 1;
 return (0);
}
