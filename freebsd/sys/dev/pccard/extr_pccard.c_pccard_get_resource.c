
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list_entry {int count; int start; } ;
struct resource_list {int dummy; } ;
struct pccard_ivar {struct resource_list resources; } ;
typedef int rman_res_t ;
typedef int device_t ;


 int ENOENT ;
 struct pccard_ivar* PCCARD_IVAR (int ) ;
 struct resource_list_entry* resource_list_find (struct resource_list*,int,int) ;

__attribute__((used)) static int
pccard_get_resource(device_t dev, device_t child, int type, int rid,
    rman_res_t *startp, rman_res_t *countp)
{
 struct pccard_ivar *devi = PCCARD_IVAR(child);
 struct resource_list *rl = &devi->resources;
 struct resource_list_entry *rle;

 rle = resource_list_find(rl, type, rid);
 if (rle == ((void*)0))
  return (ENOENT);

 if (startp != ((void*)0))
  *startp = rle->start;
 if (countp != ((void*)0))
  *countp = rle->count;

 return (0);
}
