
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bw_meter {int bm_flags; int bm_time_hash; struct bw_meter* bm_time_next; } ;


 int BW_METER_BUCKETS ;
 int BW_METER_LEQ ;
 int MFC_LOCK_ASSERT () ;
 struct bw_meter** V_bw_meter_timers ;
 int panic (char*) ;

__attribute__((used)) static void
unschedule_bw_meter(struct bw_meter *x)
{
    int time_hash;
    struct bw_meter *prev, *tmp;

    MFC_LOCK_ASSERT();

    if (!(x->bm_flags & BW_METER_LEQ))
 return;




    time_hash = x->bm_time_hash;
    if (time_hash >= BW_METER_BUCKETS)
 return;

    for (prev = ((void*)0), tmp = V_bw_meter_timers[time_hash];
      tmp != ((void*)0); prev = tmp, tmp = tmp->bm_time_next)
 if (tmp == x)
     break;

    if (tmp == ((void*)0))
 panic("unschedule_bw_meter: bw_meter entry not found");

    if (prev != ((void*)0))
 prev->bm_time_next = x->bm_time_next;
    else
 V_bw_meter_timers[time_hash] = x->bm_time_next;

    x->bm_time_next = ((void*)0);
    x->bm_time_hash = BW_METER_BUCKETS;
}
