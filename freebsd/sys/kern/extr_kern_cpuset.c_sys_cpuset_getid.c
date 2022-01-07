
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cpuset_getid_args {int setid; int id; int which; int level; } ;


 int kern_cpuset_getid (struct thread*,int ,int ,int ,int ) ;

int
sys_cpuset_getid(struct thread *td, struct cpuset_getid_args *uap)
{

 return (kern_cpuset_getid(td, uap->level, uap->which, uap->id,
     uap->setid));
}
