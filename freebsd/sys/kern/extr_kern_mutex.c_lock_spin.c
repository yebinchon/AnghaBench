
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lock_object {int dummy; } ;


 int panic (char*) ;

void
lock_spin(struct lock_object *lock, uintptr_t how)
{

 panic("spin locks can only use msleep_spin");
}
