
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct thread {TYPE_1__* td_frame; } ;
struct TYPE_2__ {scalar_t__* tf_global; } ;


 struct thread* curthread ;
 int flushw () ;

int
cpu_set_user_tls(struct thread *td, void *tls_base)
{

 if (td == curthread)
  flushw();
 td->td_frame->tf_global[7] = (uint64_t)tls_base;
 return (0);
}
