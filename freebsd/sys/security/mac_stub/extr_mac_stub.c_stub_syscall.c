
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;



__attribute__((used)) static int
stub_syscall(struct thread *td, int call, void *arg)
{

 return (0);
}
