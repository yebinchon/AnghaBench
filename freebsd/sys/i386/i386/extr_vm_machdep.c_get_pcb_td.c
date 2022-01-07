
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
struct thread {int td_kstack_pages; scalar_t__ td_kstack; } ;
struct pcb {int dummy; } ;


 int PAGE_SIZE ;
 int XSAVE_AREA_ALIGN ;
 int cpu_max_ext_state_size ;
 scalar_t__ roundup2 (int ,int ) ;

struct pcb *
get_pcb_td(struct thread *td)
{
 vm_offset_t p;

 p = td->td_kstack + td->td_kstack_pages * PAGE_SIZE -
     roundup2(cpu_max_ext_state_size, XSAVE_AREA_ALIGN) -
     sizeof(struct pcb);
 return ((struct pcb *)p);
}
