
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* uma_zone_t ;
struct TYPE_3__ {void* uz_fails; void* uz_frees; void* uz_allocs; } ;


 int M_WAITOK ;
 void* counter_u64_alloc (int ) ;

__attribute__((used)) static void
zone_alloc_counters(uma_zone_t zone)
{

 zone->uz_allocs = counter_u64_alloc(M_WAITOK);
 zone->uz_frees = counter_u64_alloc(M_WAITOK);
 zone->uz_fails = counter_u64_alloc(M_WAITOK);
}
