
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct sysarch_args {int dummy; } ;


 int EINVAL ;

int
sysarch(struct thread *td, struct sysarch_args *uap)
{

 return (EINVAL);
}
