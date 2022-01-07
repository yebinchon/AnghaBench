
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct resource {int dummy; } ;
struct bhnd_resource {int direct; struct resource* res; } ;
typedef int rman_res_t ;
typedef int device_t ;


 int BHND_BUS_ACTIVATE_RESOURCE (int ,int ,int,int,struct bhnd_resource*) ;
 struct resource* BUS_ALLOC_RESOURCE (int ,int ,int,int*,int ,int ,int ,int) ;
 int BUS_RELEASE_RESOURCE (int ,int ,int,int,struct resource*) ;
 int M_BHND ;
 int M_NOWAIT ;
 int RF_ACTIVE ;
 int free (struct bhnd_resource*,int ) ;
 struct bhnd_resource* malloc (int,int ,int ) ;

struct bhnd_resource *
bhnd_bus_generic_alloc_resource(device_t dev, device_t child, int type,
 int *rid, rman_res_t start, rman_res_t end, rman_res_t count,
 u_int flags)
{
 struct bhnd_resource *br;
 struct resource *res;
 int error;

 br = ((void*)0);
 res = ((void*)0);


 res = BUS_ALLOC_RESOURCE(dev, child, type, rid, start, end, count,
     (flags & ~RF_ACTIVE));
 if (res == ((void*)0))
  return (((void*)0));


 br = malloc(sizeof(struct bhnd_resource), M_BHND, M_NOWAIT);
 if (br == ((void*)0))
  goto failed;

 br->direct = 0;
 br->res = res;


 if (flags & RF_ACTIVE) {
  error = BHND_BUS_ACTIVATE_RESOURCE(dev, child, type, *rid, br);
  if (error)
   goto failed;
 }

 return (br);

failed:
 if (res != ((void*)0))
  BUS_RELEASE_RESOURCE(dev, child, type, *rid, res);

 free(br, M_BHND);
 return (((void*)0));
}
