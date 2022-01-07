
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cov_trace_pc_t ;


 int atomic_store_ptr (int *,int ) ;
 int cov_trace_pc ;

void
cov_register_pc(cov_trace_pc_t trace_pc)
{

 atomic_store_ptr(&cov_trace_pc, trace_pc);
}
