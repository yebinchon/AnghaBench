
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtx {int dummy; } ;
struct lock_object {int dummy; } ;


 int mtx_lock (struct mtx*) ;

void
lock_mtx(struct lock_object *lock, uintptr_t how)
{

 mtx_lock((struct mtx *)lock);
}
