
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_cpuset; } ;
struct setlist {int dummy; } ;
struct proc {int dummy; } ;
struct domainset {int dummy; } ;
struct domainlist {int dummy; } ;
struct cpuset {int dummy; } ;
typedef int lwpid_t ;
typedef int cpuset_t ;


 int CPU_WHICH_TID ;
 int PROC_UNLOCK (struct proc*) ;
 int cpuset_freelist_free (struct setlist*) ;
 int cpuset_freelist_init (struct setlist*,int) ;
 int cpuset_rel (struct cpuset*) ;
 int cpuset_shadow (int ,struct cpuset**,int *,struct domainset*,struct setlist*,struct domainlist*) ;
 struct cpuset* cpuset_update_thread (struct thread*,struct cpuset*) ;
 int cpuset_which (int ,int ,struct proc**,struct thread**,struct cpuset**) ;
 int domainset_freelist_free (struct domainlist*) ;
 int domainset_freelist_init (struct domainlist*,int ) ;
 int thread_lock (struct thread*) ;
 int thread_unlock (struct thread*) ;

__attribute__((used)) static int
_cpuset_setthread(lwpid_t id, cpuset_t *mask, struct domainset *domain)
{
 struct setlist cpusets;
 struct domainlist domainlist;
 struct cpuset *nset;
 struct cpuset *set;
 struct thread *td;
 struct proc *p;
 int error;

 cpuset_freelist_init(&cpusets, 1);
 domainset_freelist_init(&domainlist, domain != ((void*)0));
 error = cpuset_which(CPU_WHICH_TID, id, &p, &td, &set);
 if (error)
  goto out;
 set = ((void*)0);
 thread_lock(td);
 error = cpuset_shadow(td->td_cpuset, &nset, mask, domain,
     &cpusets, &domainlist);
 if (error == 0)
  set = cpuset_update_thread(td, nset);
 thread_unlock(td);
 PROC_UNLOCK(p);
 if (set)
  cpuset_rel(set);
out:
 cpuset_freelist_free(&cpusets);
 domainset_freelist_free(&domainlist);
 return (error);
}
