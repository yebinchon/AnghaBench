
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int ;
struct resource_list {int dummy; } ;
struct resource {int dummy; } ;
struct isa_device {struct resource_list id_resources; } ;
typedef int device_t ;


 struct isa_device* DEVTOISA (int ) ;
 int ISA_PNP_NIRQ ;
 int ISA_PNP_NMEM ;
 int ISA_PNP_NPORT ;
 scalar_t__ RMAN_IS_DEFAULT_RANGE (int ,int ) ;



 int device_get_parent (int ) ;
 int resource_list_add (struct resource_list*,int,int,int ,int ,int ) ;
 struct resource* resource_list_alloc (struct resource_list*,int ,int ,int,int*,int ,int ,int ,int ) ;
 int * resource_list_find (struct resource_list*,int,int) ;

struct resource *
isa_alloc_resource(device_t bus, device_t child, int type, int *rid,
    u_long start, u_long end, u_long count, u_int flags)
{
 struct isa_device* idev = DEVTOISA(child);
 struct resource_list *rl = &idev->id_resources;
 int isdefault, passthrough, rids;

 isdefault = RMAN_IS_DEFAULT_RANGE(start, end) ? 1 : 0;
 passthrough = (device_get_parent(child) != bus) ? 1 : 0;

 if (!passthrough && !isdefault &&
     resource_list_find(rl, type, *rid) == ((void*)0)) {
  switch (type) {
  case 130: rids = ISA_PNP_NPORT; break;
  case 129: rids = ISA_PNP_NIRQ; break;
  case 128: rids = ISA_PNP_NMEM; break;
  default: rids = 0; break;
  }
  if (*rid < 0 || *rid >= rids)
   return (((void*)0));

  resource_list_add(rl, type, *rid, start, end, count);
 }

 return (resource_list_alloc(rl, bus, child, type, rid, start, end,
     count, flags));
}
