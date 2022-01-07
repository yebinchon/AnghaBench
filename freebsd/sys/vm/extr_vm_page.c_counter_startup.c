
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_WAITOK ;
 void* counter_u64_alloc (int ) ;
 void* queue_nops ;
 void* queue_ops ;

__attribute__((used)) static void
counter_startup(void)
{

 queue_ops = counter_u64_alloc(M_WAITOK);
 queue_nops = counter_u64_alloc(M_WAITOK);
}
