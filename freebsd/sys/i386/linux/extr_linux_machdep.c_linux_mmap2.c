
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct thread {int dummy; } ;
struct linux_mmap2_args {scalar_t__ pgoff; int fd; int flags; int prot; int len; int addr; } ;


 int PAGE_SIZE ;
 int linux_mmap_common (struct thread*,int ,int ,int ,int ,int ,int) ;

int
linux_mmap2(struct thread *td, struct linux_mmap2_args *args)
{

 return (linux_mmap_common(td, args->addr, args->len, args->prot,
  args->flags, args->fd, (uint64_t)(uint32_t)args->pgoff *
  PAGE_SIZE));
}
