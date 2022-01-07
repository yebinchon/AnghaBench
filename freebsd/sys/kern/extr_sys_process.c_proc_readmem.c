
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct thread {int dummy; } ;
struct proc {int dummy; } ;
typedef int ssize_t ;


 int UIO_READ ;
 int proc_iop (struct thread*,struct proc*,int ,void*,size_t,int ) ;

ssize_t
proc_readmem(struct thread *td, struct proc *p, vm_offset_t va, void *buf,
    size_t len)
{

 return (proc_iop(td, p, va, buf, len, UIO_READ));
}
