
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int dummy; } ;
struct thread {struct trapframe* td_frame; } ;


 struct thread* curthread ;
 int syscallenter (struct thread*) ;
 int syscallret (struct thread*) ;

__attribute__((used)) static void
svc_handler(struct trapframe *frame)
{
 struct thread *td;

 td = curthread;
 td->td_frame = frame;

 syscallenter(td);
 syscallret(td);
}
