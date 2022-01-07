
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cov_trace_cmp_t ;


 int atomic_store_ptr (int *,int ) ;
 int cov_trace_cmp ;

void
cov_register_cmp(cov_trace_cmp_t trace_cmp)
{

 atomic_store_ptr(&cov_trace_cmp, trace_cmp);
}
