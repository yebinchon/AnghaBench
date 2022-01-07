
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct trapframe {int dummy; } ;
struct thread {TYPE_3__* td_pcb; struct trapframe* td_frame; } ;
struct TYPE_4__ {scalar_t__ usr_vsid; } ;
struct TYPE_5__ {TYPE_1__ aim; } ;
struct TYPE_6__ {TYPE_2__ pcb_cpu; } ;


 struct thread* curthread ;
 int syscallenter (struct thread*) ;
 int syscallret (struct thread*) ;

void
syscall(struct trapframe *frame)
{
 struct thread *td;

 td = curthread;
 td->td_frame = frame;
 syscallenter(td);
 syscallret(td);
}
