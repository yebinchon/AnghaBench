
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtx {int dummy; } ;


 int mtx_unlock (struct mtx*) ;

__attribute__((used)) static void
knlist_mtx_unlock(void *arg)
{

 mtx_unlock((struct mtx *)arg);
}
