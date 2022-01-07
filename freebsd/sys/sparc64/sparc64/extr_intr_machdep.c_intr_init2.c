
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MTX_SPIN ;
 int intr_table_lock ;
 int intrcnt_lock ;
 int mtx_init (int *,char*,int *,int ) ;
 int sx_init (int *,char*) ;

void
intr_init2()
{

 sx_init(&intr_table_lock, "intr sources");
 mtx_init(&intrcnt_lock, "intrcnt", ((void*)0), MTX_SPIN);
}
