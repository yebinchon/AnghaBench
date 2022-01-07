
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct kldunloadf_args {scalar_t__ flags; int fileid; } ;


 int EINVAL ;
 scalar_t__ LINKER_UNLOAD_FORCE ;
 scalar_t__ LINKER_UNLOAD_NORMAL ;
 int kern_kldunload (struct thread*,int ,scalar_t__) ;

int
sys_kldunloadf(struct thread *td, struct kldunloadf_args *uap)
{

 if (uap->flags != LINKER_UNLOAD_NORMAL &&
     uap->flags != LINKER_UNLOAD_FORCE)
  return (EINVAL);
 return (kern_kldunload(td, uap->fileid, uap->flags));
}
