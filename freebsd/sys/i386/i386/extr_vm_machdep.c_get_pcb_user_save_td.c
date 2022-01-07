
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef union savefpu {int dummy; } savefpu ;
struct thread {int td_kstack; int td_kstack_pages; } ;


 int KASSERT (int,char*) ;
 int PAGE_SIZE ;
 int XSAVE_AREA_ALIGN ;
 int cpu_max_ext_state_size ;
 int roundup2 (int ,int) ;

union savefpu *
get_pcb_user_save_td(struct thread *td)
{
 vm_offset_t p;

 p = td->td_kstack + td->td_kstack_pages * PAGE_SIZE -
     roundup2(cpu_max_ext_state_size, XSAVE_AREA_ALIGN);
 KASSERT((p % XSAVE_AREA_ALIGN) == 0, ("Unaligned pcb_user_save area"));
 return ((union savefpu *)p);
}
