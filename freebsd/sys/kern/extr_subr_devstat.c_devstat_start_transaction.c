
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bintime {int dummy; } ;
struct devstat {scalar_t__ start_count; scalar_t__ end_count; int sequence0; struct bintime busy_from; int sequence1; } ;


 int DTRACE_DEVSTAT_START () ;
 int MA_NOTOWNED ;
 int atomic_add_acq_int (int *,int) ;
 int atomic_add_rel_int (int *,int) ;
 int binuptime (struct bintime*) ;
 int devstat_mutex ;
 int mtx_assert (int *,int ) ;

void
devstat_start_transaction(struct devstat *ds, const struct bintime *now)
{

 mtx_assert(&devstat_mutex, MA_NOTOWNED);


 if (ds == ((void*)0))
  return;

 atomic_add_acq_int(&ds->sequence1, 1);





 if (ds->start_count == ds->end_count) {
  if (now != ((void*)0))
   ds->busy_from = *now;
  else
   binuptime(&ds->busy_from);
 }
 ds->start_count++;
 atomic_add_rel_int(&ds->sequence0, 1);
 DTRACE_DEVSTAT_START();
}
