
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef union savefpu {int dummy; } savefpu ;
struct pcb {int dummy; } ;



union savefpu *
get_pcb_user_save_pcb(struct pcb *pcb)
{
 vm_offset_t p;

 p = (vm_offset_t)(pcb + 1);
 return ((union savefpu *)p);
}
