
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knlist {void (* kl_lock ) (void*) ;void (* kl_unlock ) (void*) ;void (* kl_assert_locked ) (void*) ;void (* kl_assert_unlocked ) (void*) ;int kl_list; scalar_t__ kl_autodestroy; int * kl_lockarg; } ;


 int SLIST_INIT (int *) ;
 int knlist_lock ;
 void knlist_mtx_assert_locked (void*) ;
 void knlist_mtx_assert_unlocked (void*) ;
 void knlist_mtx_lock (void*) ;
 void knlist_mtx_unlock (void*) ;

void
knlist_init(struct knlist *knl, void *lock, void (*kl_lock)(void *),
    void (*kl_unlock)(void *),
    void (*kl_assert_locked)(void *), void (*kl_assert_unlocked)(void *))
{

 if (lock == ((void*)0))
  knl->kl_lockarg = &knlist_lock;
 else
  knl->kl_lockarg = lock;

 if (kl_lock == ((void*)0))
  knl->kl_lock = knlist_mtx_lock;
 else
  knl->kl_lock = kl_lock;
 if (kl_unlock == ((void*)0))
  knl->kl_unlock = knlist_mtx_unlock;
 else
  knl->kl_unlock = kl_unlock;
 if (kl_assert_locked == ((void*)0))
  knl->kl_assert_locked = knlist_mtx_assert_locked;
 else
  knl->kl_assert_locked = kl_assert_locked;
 if (kl_assert_unlocked == ((void*)0))
  knl->kl_assert_unlocked = knlist_mtx_assert_unlocked;
 else
  knl->kl_assert_unlocked = kl_assert_unlocked;

 knl->kl_autodestroy = 0;
 SLIST_INIT(&knl->kl_list);
}
