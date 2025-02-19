
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lock {uintptr_t lk_lock; } ;


 int LK_EXCLOTHER ;
 int LK_EXCLUSIVE ;
 uintptr_t LK_HOLDER (uintptr_t) ;
 uintptr_t LK_KERNPROC ;
 uintptr_t LK_SHARE ;
 int LK_SHARED ;
 uintptr_t LK_UNLOCKED ;
 scalar_t__ curthread ;

int
lockstatus(const struct lock *lk)
{
 uintptr_t v, x;
 int ret;

 ret = LK_SHARED;
 x = lk->lk_lock;
 v = LK_HOLDER(x);

 if ((x & LK_SHARE) == 0) {
  if (v == (uintptr_t)curthread || v == LK_KERNPROC)
   ret = LK_EXCLUSIVE;
  else
   ret = LK_EXCLOTHER;
 } else if (x == LK_UNLOCKED)
  ret = 0;

 return (ret);
}
