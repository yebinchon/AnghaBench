
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list_entry {int * res; } ;
struct resource_list {int dummy; } ;
struct resource {int dummy; } ;
typedef int device_t ;


 int EINVAL ;
 struct resource_list* apb_get_resource_list (int ,int ) ;
 struct resource_list_entry* resource_list_find (struct resource_list*,int,int) ;
 int rman_release_resource (struct resource*) ;

__attribute__((used)) static int
apb_release_resource(device_t dev, device_t child, int type,
    int rid, struct resource *r)
{
 struct resource_list *rl;
 struct resource_list_entry *rle;

 rl = apb_get_resource_list(dev, child);
 if (rl == ((void*)0))
  return (EINVAL);
 rle = resource_list_find(rl, type, rid);
 if (rle == ((void*)0))
  return (EINVAL);
 rman_release_resource(r);
 rle->res = ((void*)0);

 return (0);
}
