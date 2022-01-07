
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sema {int sema_value; int sema_mtx; } ;


 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

int
sema_value(struct sema *sema)
{
 int ret;

 mtx_lock(&sema->sema_mtx);
 ret = sema->sema_value;
 mtx_unlock(&sema->sema_mtx);
 return (ret);
}
