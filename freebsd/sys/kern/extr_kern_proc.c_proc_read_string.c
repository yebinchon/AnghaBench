
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct thread {int dummy; } ;
struct proc {int dummy; } ;
typedef scalar_t__ ssize_t ;


 int ENOMEM ;
 scalar_t__ proc_readmem (struct thread*,struct proc*,int ,char*,size_t) ;

__attribute__((used)) static int
proc_read_string(struct thread *td, struct proc *p, const char *sptr, char *buf,
    size_t len)
{
 ssize_t n;






 n = proc_readmem(td, p, (vm_offset_t)sptr, buf, len);
 if (n <= 0)
  return (ENOMEM);
 return (0);
}
