
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vmem_t ;
typedef scalar_t__ vm_offset_t ;
typedef int uintmax_t ;
typedef int u_long ;


 int M_BESTFIT ;
 int M_WAITOK ;
 int PAGE_SIZE ;
 int memguard_arena ;
 scalar_t__ memguard_base ;
 scalar_t__ memguard_mapsize ;
 int printf (char*,...) ;
 int vmem_alloc (int *,scalar_t__,int,scalar_t__*) ;
 int vmem_init (int ,char*,scalar_t__,scalar_t__,int ,int ,int) ;

void
memguard_init(vmem_t *parent)
{
 vm_offset_t base;

 vmem_alloc(parent, memguard_mapsize, M_BESTFIT | M_WAITOK, &base);
 vmem_init(memguard_arena, "memguard arena", base, memguard_mapsize,
     PAGE_SIZE, 0, M_WAITOK);
 memguard_base = base;

 printf("MEMGUARD DEBUGGING ALLOCATOR INITIALIZED:\n");
 printf("\tMEMGUARD map base: 0x%lx\n", (u_long)base);
 printf("\tMEMGUARD map size: %jd KBytes\n",
     (uintmax_t)memguard_mapsize >> 10);
}
