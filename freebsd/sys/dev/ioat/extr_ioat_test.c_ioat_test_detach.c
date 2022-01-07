
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Giant ;
 int enable_ioat_test (int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
ioat_test_detach(void)
{

 mtx_lock(&Giant);
 enable_ioat_test(0);
 mtx_unlock(&Giant);
}
