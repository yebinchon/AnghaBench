
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cpuset_setid_args {int setid; int id; int which; } ;


 int kern_cpuset_setid (struct thread*,int ,int ,int ) ;

int
sys_cpuset_setid(struct thread *td, struct cpuset_setid_args *uap)
{

 return (kern_cpuset_setid(td, uap->which, uap->id, uap->setid));
}
