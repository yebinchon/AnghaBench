
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOOT_RUNNING ;
 int M_WAITOK ;
 int TUNABLE_INT_FETCH (char*,int *) ;
 int UMA_TIMEOUT ;
 int booted ;
 int callout_init (int *,int) ;
 int callout_reset (int *,int,int ,int *) ;
 void* counter_u64_alloc (int ) ;
 int dbg_divisor ;
 int hz ;
 int uma_callout ;
 void* uma_dbg_cnt ;
 void* uma_skip_cnt ;
 int uma_timeout ;
 int zone_alloc_counters ;
 int zone_foreach (int ) ;

__attribute__((used)) static void
uma_startup3(void)
{






 zone_foreach(zone_alloc_counters);
 callout_init(&uma_callout, 1);
 callout_reset(&uma_callout, UMA_TIMEOUT * hz, uma_timeout, ((void*)0));
 booted = BOOT_RUNNING;
}
