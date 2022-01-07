
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_store_ptr (int *,int *) ;
 int cov_trace_pc ;

void
cov_unregister_pc(void)
{

 atomic_store_ptr(&cov_trace_pc, ((void*)0));
}
