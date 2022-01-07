
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct sstk_args {int dummy; } ;


 int EOPNOTSUPP ;

int
sys_sstk(struct thread *td, struct sstk_args *uap)
{

 return (EOPNOTSUPP);
}
