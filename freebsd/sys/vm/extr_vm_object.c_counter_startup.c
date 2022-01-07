
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_WAITOK ;
 void* counter_u64_alloc (int ) ;
 void* object_bypasses ;
 void* object_collapses ;

__attribute__((used)) static void
counter_startup(void)
{

 object_collapses = counter_u64_alloc(M_WAITOK);
 object_bypasses = counter_u64_alloc(M_WAITOK);
}
