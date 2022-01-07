
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct statinfo {long double snap_time; TYPE_1__* dinfo; } ;
struct TYPE_7__ {int position; } ;
struct TYPE_6__ {int creation_time; } ;
struct TYPE_5__ {TYPE_2__* devices; } ;


 int DSM_BUSY_PCT ;
 int DSM_KB_PER_TRANSFER ;
 int DSM_MB_PER_SECOND ;
 int DSM_NONE ;
 int DSM_TRANSFERS_PER_SECOND ;
 TYPE_4__* dev_select ;
 long double devstat_compute_etime (int *,int *) ;
 scalar_t__ devstat_compute_statistics (TYPE_2__*,TYPE_2__*,long double,int ,long double*,int ,long double*,int ,long double*,int ,long double*,int ) ;
 int devstat_errbuf ;
 int errx (int,char*,int ) ;
 int putlongdouble (long double,int,int,int,int,int ) ;

__attribute__((used)) static void
dsshow2(int diskcol, int diskrow, int dn, int lc, struct statinfo *now, struct statinfo *then)
{
 long double transfers_per_second;
 long double kb_per_transfer, mb_per_second;
 long double elapsed_time, device_busy;
 int di;

 di = dev_select[dn].position;

 if (then != ((void*)0)) {

  elapsed_time = now->snap_time - then->snap_time;
 } else {

  elapsed_time = now->snap_time - devstat_compute_etime(
      &now->dinfo->devices[di].creation_time, ((void*)0));
 }

 if (devstat_compute_statistics(&now->dinfo->devices[di], then ?
     &then->dinfo->devices[di] : ((void*)0), elapsed_time,
     DSM_KB_PER_TRANSFER, &kb_per_transfer,
     DSM_TRANSFERS_PER_SECOND, &transfers_per_second,
     DSM_MB_PER_SECOND, &mb_per_second,
     DSM_BUSY_PCT, &device_busy,
     DSM_NONE) != 0)
  errx(1, "%s", devstat_errbuf);

 lc = diskcol + lc * 6;
 putlongdouble(kb_per_transfer, diskrow + 1, lc, 5, 2, 0);
 putlongdouble(transfers_per_second, diskrow + 2, lc, 5, 0, 0);
 putlongdouble(mb_per_second, diskrow + 3, lc, 5, 2, 0);
 putlongdouble(device_busy, diskrow + 4, lc, 5, 0, 0);
}
