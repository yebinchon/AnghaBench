
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list_entry {int count; int start; } ;
struct resource_list {int dummy; } ;
struct nexus_device {struct resource_list nx_resources; } ;
typedef int rman_res_t ;
typedef int device_t ;


 struct nexus_device* DEVTONX (int ) ;
 int ENOENT ;
 struct resource_list_entry* resource_list_find (struct resource_list*,int,int) ;

__attribute__((used)) static int
nexus_get_resource(device_t dev, device_t child, int type, int rid,
    rman_res_t *startp, rman_res_t *countp)
{
 struct nexus_device *ndev = DEVTONX(child);
 struct resource_list *rl = &ndev->nx_resources;
 struct resource_list_entry *rle;

 rle = resource_list_find(rl, type, rid);
 if (!rle)
  return(ENOENT);
 if (startp)
  *startp = rle->start;
 if (countp)
  *countp = rle->count;
 return (0);
}
