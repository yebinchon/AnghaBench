
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {TYPE_1__* td_frame; } ;
typedef scalar_t__ register_t ;
struct TYPE_2__ {scalar_t__ tf_eax; scalar_t__ tf_esp; } ;



int
linux_set_upcall_kse(struct thread *td, register_t stack)
{

 if (stack)
  td->td_frame->tf_esp = stack;





 td->td_frame->tf_eax = 0;
 return (0);
}
