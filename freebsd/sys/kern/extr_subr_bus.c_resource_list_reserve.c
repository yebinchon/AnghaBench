
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct resource_list_entry {int flags; } ;
struct resource_list {int dummy; } ;
struct resource {int dummy; } ;
typedef int rman_res_t ;
typedef scalar_t__ device_t ;


 int RF_ACTIVE ;
 int RLE_RESERVED ;
 scalar_t__ device_get_parent (scalar_t__) ;
 int panic (char*) ;
 struct resource* resource_list_alloc (struct resource_list*,scalar_t__,scalar_t__,int,int*,int ,int ,int ,int) ;
 struct resource_list_entry* resource_list_find (struct resource_list*,int,int) ;

struct resource *
resource_list_reserve(struct resource_list *rl, device_t bus, device_t child,
    int type, int *rid, rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
 struct resource_list_entry *rle = ((void*)0);
 int passthrough = (device_get_parent(child) != bus);
 struct resource *r;

 if (passthrough)
  panic(
    "resource_list_reserve() should only be called for direct children");
 if (flags & RF_ACTIVE)
  panic(
    "resource_list_reserve() should only reserve inactive resources");

 r = resource_list_alloc(rl, bus, child, type, rid, start, end, count,
     flags);
 if (r != ((void*)0)) {
  rle = resource_list_find(rl, type, *rid);
  rle->flags |= RLE_RESERVED;
 }
 return (r);
}
