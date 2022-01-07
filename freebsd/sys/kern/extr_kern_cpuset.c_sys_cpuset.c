
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_cpuset; } ;
struct cpuset_args {int setid; } ;
struct cpuset {int cs_id; int cs_mask; } ;


 int copyout (int *,int ,int) ;
 int cpuset_create (struct cpuset**,struct cpuset*,int *) ;
 struct cpuset* cpuset_refroot (int ) ;
 int cpuset_rel (struct cpuset*) ;
 int cpuset_setproc (int,struct cpuset*,int *,int *) ;
 int thread_lock (struct thread*) ;
 int thread_unlock (struct thread*) ;

int
sys_cpuset(struct thread *td, struct cpuset_args *uap)
{
 struct cpuset *root;
 struct cpuset *set;
 int error;

 thread_lock(td);
 root = cpuset_refroot(td->td_cpuset);
 thread_unlock(td);
 error = cpuset_create(&set, root, &root->cs_mask);
 cpuset_rel(root);
 if (error)
  return (error);
 error = copyout(&set->cs_id, uap->setid, sizeof(set->cs_id));
 if (error == 0)
  error = cpuset_setproc(-1, set, ((void*)0), ((void*)0));
 cpuset_rel(set);
 return (error);
}
