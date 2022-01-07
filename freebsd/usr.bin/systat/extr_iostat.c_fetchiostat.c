
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct devinfo {int generation; int numdevs; } ;
struct TYPE_5__ {struct devinfo* dinfo; int snap_time; int cp_time; } ;
struct TYPE_4__ {int snap_time; struct devinfo* dinfo; } ;


 int cmdiostat (char*,int *) ;
 TYPE_2__ cur_dev ;
 int devstat_errbuf ;
 int devstat_getdevs (int *,TYPE_2__*) ;
 int errx (int,char*,int ) ;
 int exit (int) ;
 int generation ;
 TYPE_1__ last_dev ;
 int num_devices ;
 int perror (char*) ;
 scalar_t__ sysctlbyname (char*,int *,size_t*,int *,int ) ;

void
fetchiostat(void)
{
 struct devinfo *tmp_dinfo;
 size_t len;

 len = sizeof(cur_dev.cp_time);
 if (sysctlbyname("kern.cp_time", &cur_dev.cp_time, &len, ((void*)0), 0)
     || len != sizeof(cur_dev.cp_time)) {
  perror("kern.cp_time");
  exit (1);
 }
 tmp_dinfo = last_dev.dinfo;
 last_dev.dinfo = cur_dev.dinfo;
 cur_dev.dinfo = tmp_dinfo;

 last_dev.snap_time = cur_dev.snap_time;
 switch (devstat_getdevs(((void*)0), &cur_dev)) {
 case -1:
  errx(1, "%s", devstat_errbuf);
  break;
 case 1:
  cmdiostat("refresh", ((void*)0));
  break;
 default:
  break;
 }
 num_devices = cur_dev.dinfo->numdevs;
 generation = cur_dev.dinfo->generation;

}
