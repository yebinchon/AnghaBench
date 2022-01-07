
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {scalar_t__ td_critnest; scalar_t__ td_oncpu; } ;
struct pcpu {int pc_spinlocks; } ;
struct lock_object {int dummy; } ;
struct lock_instance {int dummy; } ;


 scalar_t__ NOCPU ;
 struct lock_instance* find_instance (int ,struct lock_object*) ;
 struct pcpu* pcpu_find (scalar_t__) ;
 int witness_list_lock (struct lock_instance*,int (*) (char const*)) ;

void
witness_display_spinlock(struct lock_object *lock, struct thread *owner,
    int (*prnt)(const char *fmt, ...))
{
 struct lock_instance *instance;
 struct pcpu *pc;

 if (owner->td_critnest == 0 || owner->td_oncpu == NOCPU)
  return;
 pc = pcpu_find(owner->td_oncpu);
 instance = find_instance(pc->pc_spinlocks, lock);
 if (instance != ((void*)0))
  witness_list_lock(instance, prnt);
}
