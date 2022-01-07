
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_resource {int res; } ;
typedef int device_t ;


 int BUS_RELEASE_RESOURCE (int ,int ,int,int,int ) ;
 int M_BHND ;
 int free (struct bhnd_resource*,int ) ;

int
bhnd_bus_generic_release_resource(device_t dev, device_t child, int type,
    int rid, struct bhnd_resource *r)
{
 int error;

 if ((error = BUS_RELEASE_RESOURCE(dev, child, type, rid, r->res)))
  return (error);

 free(r, M_BHND);
 return (0);
}
