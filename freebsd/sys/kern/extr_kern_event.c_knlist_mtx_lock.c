
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtx {int dummy; } ;


 int mtx_lock (struct mtx*) ;

__attribute__((used)) static void
knlist_mtx_lock(void *arg)
{

 mtx_lock((struct mtx *)arg);
}
