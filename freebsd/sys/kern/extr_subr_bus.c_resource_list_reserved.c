
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list_entry {int flags; } ;
struct resource_list {int dummy; } ;


 int RLE_RESERVED ;
 struct resource_list_entry* resource_list_find (struct resource_list*,int,int) ;

int
resource_list_reserved(struct resource_list *rl, int type, int rid)
{
 struct resource_list_entry *rle;

 rle = resource_list_find(rl, type, rid);
 if (rle != ((void*)0) && rle->flags & RLE_RESERVED)
  return (1);
 return (0);
}
