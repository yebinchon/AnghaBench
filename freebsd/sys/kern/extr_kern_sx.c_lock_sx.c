
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sx {int dummy; } ;
struct lock_object {int dummy; } ;


 int sx_slock (struct sx*) ;
 int sx_xlock (struct sx*) ;

void
lock_sx(struct lock_object *lock, uintptr_t how)
{
 struct sx *sx;

 sx = (struct sx *)lock;
 if (how)
  sx_slock(sx);
 else
  sx_xlock(sx);
}
