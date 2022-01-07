
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int tf_edx; int tf_eax; } ;
struct thread {int td_tid; struct trapframe* td_frame; } ;


 int CLOUDABI_PROCESS_CHILD ;

__attribute__((used)) static void
cloudabi32_schedtail(struct thread *td)
{
 struct trapframe *frame = td->td_frame;


 frame->tf_eax = CLOUDABI_PROCESS_CHILD;
 frame->tf_edx = td->td_tid;
}
