
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct sbrk_args {int dummy; } ;


 int EOPNOTSUPP ;

int
sys_sbrk(struct thread *td, struct sbrk_args *uap)
{

 return (EOPNOTSUPP);
}
