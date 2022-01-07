
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
typedef int u_int ;
struct resource_list_entry {int start; int end; } ;
struct resource_list {int dummy; } ;
struct resource {int dummy; } ;
typedef int rman_res_t ;
typedef int device_t ;


 struct resource_list* BUS_GET_RESOURCE_LIST (int ,int ) ;
 int INRANGE (int,scalar_t__,scalar_t__) ;
 int ISA_NDRQ ;
 int ISA_NIRQ ;
 int ISA_NMEM ;
 int ISA_NPORT ;
 int RMAN_IS_DEFAULT_RANGE (int ,int ) ;




 int device_get_parent (int ) ;
 scalar_t__ isa_io_base ;
 scalar_t__ isa_io_limit ;
 scalar_t__ isa_mem_base ;
 scalar_t__ isa_mem_limit ;
 int resource_list_add (struct resource_list*,int,int,int ,int ,int ) ;
 struct resource* resource_list_alloc (struct resource_list*,int ,int ,int,int*,int ,int ,int ,int ) ;
 struct resource_list_entry* resource_list_find (struct resource_list*,int,int) ;

struct resource *
isa_alloc_resource(device_t bus, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{



 int passthrough = (device_get_parent(child) != bus);
 int isdefault = RMAN_IS_DEFAULT_RANGE(start, end);
 struct resource_list *rl;
 struct resource_list_entry *rle;
 u_long base, limit;

 rl = BUS_GET_RESOURCE_LIST(bus, child);
 if (!passthrough && !isdefault) {
  rle = resource_list_find(rl, type, *rid);
  if (!rle) {
   if (*rid < 0)
    return (((void*)0));
   switch (type) {
   case 129:
    if (*rid >= ISA_NIRQ)
     return (((void*)0));
    break;
   case 131:
    if (*rid >= ISA_NDRQ)
     return (((void*)0));
    break;
   case 128:
    if (*rid >= ISA_NMEM)
     return (((void*)0));
    break;
   case 130:
    if (*rid >= ISA_NPORT)
     return (((void*)0));
    break;
   default:
    return (((void*)0));
   }
   resource_list_add(rl, type, *rid, start, end, count);
  }
 }






 if (!passthrough) {
  if ((rle = resource_list_find(rl, type, *rid)) == ((void*)0))
   return (((void*)0));
  base = limit = 0;
  switch (type) {
  case 128:
   base = isa_mem_base;
   limit = base + isa_mem_limit;
   break;
  case 130:
   base = isa_io_base;
   limit = base + isa_io_limit;
   break;
  case 129:
   if (rle->start != rle->end || rle->start <= 7)
    return (((void*)0));
   break;
  case 131:
   break;
  default:
   return (((void*)0));
  }
  if (type == 128 || type == 130) {
   if (!INRANGE(rle->start, base, limit) ||
       !INRANGE(rle->end, base, limit))
    return (((void*)0));
  }
 }

 return (resource_list_alloc(rl, bus, child, type, rid, start, end,
     count, flags));
}
