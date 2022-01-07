
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cv_broadcast (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int rushjob ;
 int stat_rush_requests ;
 int sync_mtx ;
 int sync_wakeup ;
 int syncdelay ;

int
speedup_syncer(void)
{
 int ret = 0;

 mtx_lock(&sync_mtx);
 if (rushjob < syncdelay / 2) {
  rushjob += 1;
  stat_rush_requests += 1;
  ret = 1;
 }
 mtx_unlock(&sync_mtx);
 cv_broadcast(&sync_wakeup);
 return (ret);
}
