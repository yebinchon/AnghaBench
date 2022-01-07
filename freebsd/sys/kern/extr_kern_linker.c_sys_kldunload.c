
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct kldunload_args {int fileid; } ;


 int LINKER_UNLOAD_NORMAL ;
 int kern_kldunload (struct thread*,int ,int ) ;

int
sys_kldunload(struct thread *td, struct kldunload_args *uap)
{

 return (kern_kldunload(td, uap->fileid, LINKER_UNLOAD_NORMAL));
}
