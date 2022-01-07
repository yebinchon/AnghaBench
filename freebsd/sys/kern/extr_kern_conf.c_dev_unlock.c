
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int devmtx ;
 int mtx_unlock (int *) ;

void
dev_unlock(void)
{

 mtx_unlock(&devmtx);
}
