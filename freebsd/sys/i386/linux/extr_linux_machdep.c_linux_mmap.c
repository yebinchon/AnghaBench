
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct thread {int dummy; } ;
struct linux_mmap_args {int ptr; } ;
struct l_mmap_argv {scalar_t__ pgoff; int fd; int flags; int prot; int len; int addr; } ;
typedef int linux_args ;


 int copyin (int ,struct l_mmap_argv*,int) ;
 int linux_mmap_common (struct thread*,int ,int ,int ,int ,int ,int ) ;

int
linux_mmap(struct thread *td, struct linux_mmap_args *args)
{
 int error;
 struct l_mmap_argv linux_args;

 error = copyin(args->ptr, &linux_args, sizeof(linux_args));
 if (error)
  return (error);

 return (linux_mmap_common(td, linux_args.addr, linux_args.len,
     linux_args.prot, linux_args.flags, linux_args.fd,
     (uint32_t)linux_args.pgoff));
}
