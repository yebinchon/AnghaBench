
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_resource {int direct; int res; } ;
typedef int device_t ;


 int KASSERT (int,char*) ;
 int bus_deactivate_resource (int ,int,int,int ) ;

__attribute__((used)) static int
bhnd_nexus_deactivate_resource(device_t dev, device_t child,
    int type, int rid, struct bhnd_resource *r)
{
 int error;


 KASSERT(r->direct, ("indirect resource delegated to bhnd_nexus\n"));

 if ((error = bus_deactivate_resource(child, type, rid, r->res)))
  return (error);

 r->direct = 0;
 return (0);
}
