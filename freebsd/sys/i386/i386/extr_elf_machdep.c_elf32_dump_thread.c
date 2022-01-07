
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct thread {int dummy; } ;


 int NT_X86_XSTATE ;
 int X86_XSTATE_XCR0_OFFSET ;
 int cpu_max_ext_state_size ;
 scalar_t__ elf32_populate_note (int ,int *,void*,int ,void**) ;
 int * get_pcb_user_save_td (struct thread*) ;
 int npxgetregs (struct thread*) ;
 scalar_t__ use_xsave ;
 int xsave_mask ;

void
elf32_dump_thread(struct thread *td, void *dst, size_t *off)
{
 void *buf;
 size_t len;

 len = 0;
 if (use_xsave) {
  if (dst != ((void*)0)) {
   npxgetregs(td);
   len += elf32_populate_note(NT_X86_XSTATE,
       get_pcb_user_save_td(td), dst,
       cpu_max_ext_state_size, &buf);
   *(uint64_t *)((char *)buf + X86_XSTATE_XCR0_OFFSET) =
       xsave_mask;
  } else
   len += elf32_populate_note(NT_X86_XSTATE, ((void*)0), ((void*)0),
       cpu_max_ext_state_size, ((void*)0));
 }
 *off = len;
}
