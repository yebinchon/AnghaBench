
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devstatlist {int dummy; } ;
struct devstat {int unit_number; int sequence1; } ;


 int MA_NOTOWNED ;
 int STAILQ_REMOVE (struct devstatlist*,struct devstat*,int ,int ) ;
 int atomic_add_acq_int (int *,int) ;
 int dev_links ;
 struct devstatlist device_statq ;
 int devstat ;
 int devstat_free (struct devstat*) ;
 int devstat_generation ;
 int devstat_mutex ;
 int devstat_num_devs ;
 int mtx_assert (int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
devstat_remove_entry(struct devstat *ds)
{
 struct devstatlist *devstat_head;

 mtx_assert(&devstat_mutex, MA_NOTOWNED);
 if (ds == ((void*)0))
  return;

 mtx_lock(&devstat_mutex);

 devstat_head = &device_statq;


 atomic_add_acq_int(&ds->sequence1, 1);
 if (ds->unit_number != -1) {
  devstat_num_devs--;
  STAILQ_REMOVE(devstat_head, ds, devstat, dev_links);
 }
 devstat_free(ds);
 devstat_generation++;
 mtx_unlock(&devstat_mutex);
}
