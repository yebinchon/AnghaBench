
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int p_numthreads; } ;
struct kinfo_proc32 {int dummy; } ;
struct kinfo_proc {int dummy; } ;
typedef int ssize_t ;


 int KERN_PROC_MASK32 ;
 int KERN_PROC_NOTHREADS ;
 int MA_OWNED ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 int PROC_UNLOCK (struct proc*) ;

__attribute__((used)) static ssize_t
kern_proc_out_size(struct proc *p, int flags)
{
 ssize_t size = 0;

 PROC_LOCK_ASSERT(p, MA_OWNED);

 if ((flags & KERN_PROC_NOTHREADS) != 0) {





   size += sizeof(struct kinfo_proc);
 } else {





   size += sizeof(struct kinfo_proc) * p->p_numthreads;
 }
 PROC_UNLOCK(p);
 return (size);
}
