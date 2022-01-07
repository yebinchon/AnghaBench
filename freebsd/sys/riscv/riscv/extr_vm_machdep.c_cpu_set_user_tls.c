
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {TYPE_1__* td_frame; } ;
typedef scalar_t__ register_t ;
struct TYPE_2__ {scalar_t__ tf_tp; } ;


 int EINVAL ;
 scalar_t__ TP_OFFSET ;
 uintptr_t VM_MAXUSER_ADDRESS ;

int
cpu_set_user_tls(struct thread *td, void *tls_base)
{

 if ((uintptr_t)tls_base >= VM_MAXUSER_ADDRESS)
  return (EINVAL);





 td->td_frame->tf_tp = (register_t)tls_base + TP_OFFSET;

 return (0);
}
