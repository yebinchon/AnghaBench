
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list_entry {int flags; int res; } ;
struct resource_list {int dummy; } ;
typedef scalar_t__ device_t ;


 int EBUSY ;
 int EINVAL ;
 int RLE_ALLOCATED ;
 int RLE_RESERVED ;
 scalar_t__ device_get_parent (scalar_t__) ;
 int panic (char*) ;
 struct resource_list_entry* resource_list_find (struct resource_list*,int,int) ;
 int resource_list_release (struct resource_list*,scalar_t__,scalar_t__,int,int,int ) ;

int
resource_list_unreserve(struct resource_list *rl, device_t bus, device_t child,
    int type, int rid)
{
 struct resource_list_entry *rle = ((void*)0);
 int passthrough = (device_get_parent(child) != bus);

 if (passthrough)
  panic(
    "resource_list_unreserve() should only be called for direct children");

 rle = resource_list_find(rl, type, rid);

 if (!rle)
  panic("resource_list_unreserve: can't find resource");
 if (!(rle->flags & RLE_RESERVED))
  return (EINVAL);
 if (rle->flags & RLE_ALLOCATED)
  return (EBUSY);
 rle->flags &= ~RLE_RESERVED;
 return (resource_list_release(rl, bus, child, type, rid, rle->res));
}
