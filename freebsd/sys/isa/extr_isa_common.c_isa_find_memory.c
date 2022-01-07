
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct resource {int dummy; } ;
struct isa_config {int ic_nmem; TYPE_1__* ic_mem; } ;
typedef int device_t ;
struct TYPE_2__ {int ir_size; int ir_start; int ir_end; int ir_align; } ;


 int ISA_NMEM ;
 scalar_t__ MAX (int,int) ;
 int SYS_RES_MEMORY ;
 struct resource* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_delete_resource (int ,int ,int) ;
 int bus_release_resource (int ,int ,int,struct resource*) ;
 int bus_set_resource (int ,int ,int,int,int) ;
 int rman_make_alignment_flags (int) ;

__attribute__((used)) static int
isa_find_memory(device_t child, struct isa_config *config,
    struct isa_config *result)
{
 int success, i;
 struct resource *res[ISA_NMEM];




 for (i = 0; i < ISA_NMEM; i++) {
  bus_delete_resource(child, SYS_RES_MEMORY, i);
  res[i] = ((void*)0);
 }

 success = 1;
 result->ic_nmem = config->ic_nmem;
 for (i = 0; i < config->ic_nmem; i++) {
  uint32_t start, end, size, align;

  size = config->ic_mem[i].ir_size;


  if (size == 0) {
   result->ic_mem[i].ir_start = 0;
   result->ic_mem[i].ir_end = 0;
   result->ic_mem[i].ir_size = 0;
   result->ic_mem[i].ir_align = 0;
   continue;
  }

  for (start = config->ic_mem[i].ir_start,
        end = config->ic_mem[i].ir_end,
        align = config->ic_mem[i].ir_align;
       start + size - 1 <= end && start + size > start;
       start += MAX(align, 1)) {
   bus_set_resource(child, SYS_RES_MEMORY, i,
      start, size);
   res[i] = bus_alloc_resource_any(child,
       SYS_RES_MEMORY, &i,
       rman_make_alignment_flags(align) );
   if (res[i]) {
    result->ic_mem[i].ir_start = start;
    result->ic_mem[i].ir_end = start + size - 1;
    result->ic_mem[i].ir_size = size;
    result->ic_mem[i].ir_align = align;
    break;
   }
  }





  if (!res[i]) {
   success = 0;
   break;
  }
 }

 for (i = 0; i < ISA_NMEM; i++) {
  if (res[i])
   bus_release_resource(child, SYS_RES_MEMORY,
          i, res[i]);
 }

 return (success);
}
