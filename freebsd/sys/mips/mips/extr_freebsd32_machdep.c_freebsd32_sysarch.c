
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tlsbase ;
struct TYPE_2__ {void* md_tls; } ;
struct thread {TYPE_1__ td_md; } ;
struct freebsd32_sysarch_args {int op; int parms; } ;
typedef int int32_t ;


 int EINVAL ;


 int copyout (int *,int ,int) ;

int
freebsd32_sysarch(struct thread *td, struct freebsd32_sysarch_args *uap)
{
 int error;
 int32_t tlsbase;

 switch (uap->op) {
 case 128:
  td->td_md.md_tls = (void *)(intptr_t)uap->parms;
  return (0);
 case 129:
  tlsbase = (int32_t)(intptr_t)td->td_md.md_tls;
  error = copyout(&tlsbase, uap->parms, sizeof(tlsbase));
  return (error);
 default:
  break;
 }
 return (EINVAL);
}
