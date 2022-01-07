
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* vm_offset_t ;
struct TYPE_2__ {int addresses_stored; void* buf; void* vbibuffer; void* vbidata; void* odd_dma_prog; void* dma_prog; } ;




 int BKTR_MEM_MAX_DEVICES ;



 TYPE_1__* memory_list ;
 int printf (char*,int,int,void*) ;

void
bktr_store_address(int unit, int type, vm_offset_t addr)
{

 if (unit < 0 || unit >= BKTR_MEM_MAX_DEVICES) {
  printf("bktr_mem: Unit number %d invalid for memory type %d, address %p\n",
         unit, type, (void *) addr);
  return;
 }

 switch (type) {
 case 131:
  memory_list[unit].dma_prog = addr;
  memory_list[unit].addresses_stored = 1;
  break;
 case 130:
  memory_list[unit].odd_dma_prog = addr;
  memory_list[unit].addresses_stored = 1;
  break;
 case 128:
  memory_list[unit].vbidata = addr;
  memory_list[unit].addresses_stored = 1;
  break;
 case 129:
  memory_list[unit].vbibuffer = addr;
  memory_list[unit].addresses_stored = 1;
  break;
 case 132:
  memory_list[unit].buf = addr;
  memory_list[unit].addresses_stored = 1;
  break;
 default:
  printf("bktr_mem: Invalid memory type %d for bktr%d, address %p\n",
   type, unit, (void *)addr);
  break;
 }
}
