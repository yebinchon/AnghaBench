
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int vdev_cache_stats; int arcstats_l2; int zfetchstats; int arcstats_prefetch_metadata; int arcstats_prefetch_data; int arcstats_demand_metadata; int arcstats_demand_data; int arcstats; } ;
struct TYPE_6__ {int vdev_cache_stats; int arcstats_l2; int zfetchstats; int arcstats_prefetch_metadata; int arcstats_prefetch_data; int arcstats_demand_metadata; int arcstats_demand_data; int arcstats; } ;
struct zarcstats {TYPE_2__ misses; TYPE_1__ hits; } ;
struct devinfo {int dummy; } ;
struct TYPE_9__ {int snap_time; struct devinfo* dinfo; } ;
struct TYPE_8__ {int snap_time; struct devinfo* dinfo; } ;


 int GETSYSCTL (char*,int ) ;
 TYPE_4__ cur_dev ;
 int dsgetinfo (TYPE_4__*) ;
 TYPE_3__ last_dev ;
 scalar_t__ sysctlbyname (char*,int *,size_t*,int *,int ) ;

__attribute__((used)) static void
getinfo(struct zarcstats *ls)
{
 struct devinfo *tmp_dinfo;

 tmp_dinfo = last_dev.dinfo;
 last_dev.dinfo = cur_dev.dinfo;
 cur_dev.dinfo = tmp_dinfo;

 last_dev.snap_time = cur_dev.snap_time;
 dsgetinfo( &cur_dev );

 size_t size = sizeof( ls->hits.arcstats );
 if ( sysctlbyname("kstat.zfs.misc.arcstats.hits",
  &ls->hits.arcstats, &size, ((void*)0), 0 ) != 0 )
  return;
 GETSYSCTL("kstat.zfs.misc.arcstats.misses",
  ls->misses.arcstats);
 GETSYSCTL("kstat.zfs.misc.arcstats.demand_data_hits",
  ls->hits.arcstats_demand_data);
 GETSYSCTL("kstat.zfs.misc.arcstats.demand_data_misses",
  ls->misses.arcstats_demand_data);
 GETSYSCTL("kstat.zfs.misc.arcstats.demand_metadata_hits",
  ls->hits.arcstats_demand_metadata);
 GETSYSCTL("kstat.zfs.misc.arcstats.demand_metadata_misses",
  ls->misses.arcstats_demand_metadata);
 GETSYSCTL("kstat.zfs.misc.arcstats.prefetch_data_hits",
  ls->hits.arcstats_prefetch_data);
 GETSYSCTL("kstat.zfs.misc.arcstats.prefetch_data_misses",
  ls->misses.arcstats_prefetch_data);
 GETSYSCTL("kstat.zfs.misc.arcstats.prefetch_metadata_hits",
  ls->hits.arcstats_prefetch_metadata);
 GETSYSCTL("kstat.zfs.misc.arcstats.prefetch_metadata_misses",
  ls->misses.arcstats_prefetch_metadata);
 GETSYSCTL("kstat.zfs.misc.zfetchstats.hits",
  ls->hits.zfetchstats);
 GETSYSCTL("kstat.zfs.misc.zfetchstats.misses",
  ls->misses.zfetchstats);
 GETSYSCTL("kstat.zfs.misc.arcstats.l2_hits",
  ls->hits.arcstats_l2);
 GETSYSCTL("kstat.zfs.misc.arcstats.l2_misses",
  ls->misses.arcstats_l2);
 GETSYSCTL("kstat.zfs.misc.vdev_cache_stats.hits",
  ls->hits.vdev_cache_stats);
 GETSYSCTL("kstat.zfs.misc.vdev_cache_stats.misses",
  ls->misses.vdev_cache_stats);
}
