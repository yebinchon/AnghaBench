
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rwlock {int dummy; } ;
struct knlist {int dummy; } ;


 int knlist_init (struct knlist*,struct rwlock*,int ,int ,int ,int ) ;
 int knlist_rw_assert_locked ;
 int knlist_rw_assert_unlocked ;
 int knlist_rw_rlock ;
 int knlist_rw_runlock ;

void
knlist_init_rw_reader(struct knlist *knl, struct rwlock *lock)
{

 knlist_init(knl, lock, knlist_rw_rlock, knlist_rw_runlock,
     knlist_rw_assert_locked, knlist_rw_assert_unlocked);
}
