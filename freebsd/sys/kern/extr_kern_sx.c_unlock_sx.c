
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sx {int dummy; } ;
struct lock_object {int dummy; } ;


 int SA_LOCKED ;
 int SA_NOTRECURSED ;
 int sx_assert (struct sx*,int) ;
 int sx_sunlock (struct sx*) ;
 scalar_t__ sx_xlocked (struct sx*) ;
 int sx_xunlock (struct sx*) ;

uintptr_t
unlock_sx(struct lock_object *lock)
{
 struct sx *sx;

 sx = (struct sx *)lock;
 sx_assert(sx, SA_LOCKED | SA_NOTRECURSED);
 if (sx_xlocked(sx)) {
  sx_xunlock(sx);
  return (0);
 } else {
  sx_sunlock(sx);
  return (1);
 }
}
