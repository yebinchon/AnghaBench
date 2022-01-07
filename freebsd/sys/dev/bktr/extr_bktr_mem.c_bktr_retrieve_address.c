
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_offset_t ;
struct TYPE_2__ {int buf; int vbibuffer; int vbidata; int odd_dma_prog; int dma_prog; } ;




 int BKTR_MEM_MAX_DEVICES ;



 TYPE_1__* memory_list ;
 int printf (char*,int,int) ;

vm_offset_t
bktr_retrieve_address(int unit, int type)
{

 if (unit < 0 || unit >= BKTR_MEM_MAX_DEVICES) {
  printf("bktr_mem: Unit number %d too large for memory type %d\n",
   unit, type);
  return (0);
 }
 switch (type) {
 case 131:
  return memory_list[unit].dma_prog;
 case 130:
  return memory_list[unit].odd_dma_prog;
 case 128:
  return memory_list[unit].vbidata;
 case 129:
  return memory_list[unit].vbibuffer;
 case 132:
  return memory_list[unit].buf;
 default:
  printf("bktr_mem: Invalid memory type %d for bktr%d",
         type, unit);
  return (0);
 }
}
