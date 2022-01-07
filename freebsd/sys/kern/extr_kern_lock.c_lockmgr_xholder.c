
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct lock {uintptr_t lk_lock; } ;


 scalar_t__ LK_HOLDER (uintptr_t) ;
 uintptr_t LK_SHARE ;

__attribute__((used)) static __inline struct thread *
lockmgr_xholder(const struct lock *lk)
{
 uintptr_t x;

 x = lk->lk_lock;
 return ((x & LK_SHARE) ? ((void*)0) : (struct thread *)LK_HOLDER(x));
}
