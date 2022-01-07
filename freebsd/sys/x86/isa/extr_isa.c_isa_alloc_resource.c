
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct resource_list_entry {int dummy; } ;
struct resource_list {int dummy; } ;
struct resource {int dummy; } ;
struct isa_device {struct resource_list id_resources; } ;
typedef int rman_res_t ;
typedef int device_t ;


 struct isa_device* DEVTOISA (int ) ;
 int ISA_NDRQ ;
 int ISA_NIRQ ;
 int ISA_NMEM ;
 int ISA_NPORT ;
 int RMAN_IS_DEFAULT_RANGE (int ,int ) ;




 int device_get_parent (int ) ;
 int resource_list_add (struct resource_list*,int,int,int ,int ,int ) ;
 struct resource* resource_list_alloc (struct resource_list*,int ,int ,int,int*,int ,int ,int ,int ) ;
 struct resource_list_entry* resource_list_find (struct resource_list*,int,int) ;

struct resource *
isa_alloc_resource(device_t bus, device_t child, int type, int *rid,
     rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{



 int passthrough = (device_get_parent(child) != bus);
 int isdefault = RMAN_IS_DEFAULT_RANGE(start, end);
 struct isa_device* idev = DEVTOISA(child);
 struct resource_list *rl = &idev->id_resources;
 struct resource_list_entry *rle;

 if (!passthrough && !isdefault) {
  rle = resource_list_find(rl, type, *rid);
  if (!rle) {
   if (*rid < 0)
    return 0;
   switch (type) {
   case 129:
    if (*rid >= ISA_NIRQ)
     return 0;
    break;
   case 131:
    if (*rid >= ISA_NDRQ)
     return 0;
    break;
   case 128:
    if (*rid >= ISA_NMEM)
     return 0;
    break;
   case 130:
    if (*rid >= ISA_NPORT)
     return 0;
    break;
   default:
    return 0;
   }
   resource_list_add(rl, type, *rid, start, end, count);
  }
 }

 return resource_list_alloc(rl, bus, child, type, rid,
       start, end, count, flags);
}
