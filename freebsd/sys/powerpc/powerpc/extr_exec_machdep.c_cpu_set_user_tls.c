
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {TYPE_1__* td_frame; int td_proc; } ;
typedef void* register_t ;
struct TYPE_2__ {void** fixreg; } ;


 int SV_LP64 ;
 scalar_t__ SV_PROC_FLAG (int ,int ) ;

int
cpu_set_user_tls(struct thread *td, void *tls_base)
{

 if (SV_PROC_FLAG(td->td_proc, SV_LP64))
  td->td_frame->fixreg[13] = (register_t)tls_base + 0x7010;
 else
  td->td_frame->fixreg[2] = (register_t)tls_base + 0x7008;
 return (0);
}
