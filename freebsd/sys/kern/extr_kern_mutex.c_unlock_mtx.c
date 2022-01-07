
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtx {int dummy; } ;
struct lock_object {int dummy; } ;


 int MA_NOTRECURSED ;
 int MA_OWNED ;
 int mtx_assert (struct mtx*,int) ;
 int mtx_unlock (struct mtx*) ;

uintptr_t
unlock_mtx(struct lock_object *lock)
{
 struct mtx *m;

 m = (struct mtx *)lock;
 mtx_assert(m, MA_OWNED | MA_NOTRECURSED);
 mtx_unlock(m);
 return (0);
}
