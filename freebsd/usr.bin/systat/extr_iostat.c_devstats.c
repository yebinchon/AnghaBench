
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {long double snap_time; TYPE_1__* dinfo; } ;
struct TYPE_9__ {int position; } ;
struct TYPE_8__ {long double snap_time; TYPE_2__* dinfo; } ;
struct TYPE_7__ {int * devices; } ;
struct TYPE_6__ {int * devices; } ;


 int DSM_KB_PER_TRANSFER ;
 int DSM_MB_PER_SECOND ;
 int DSM_NONE ;
 int DSM_TRANSFERS_PER_SECOND ;
 TYPE_5__ cur_dev ;
 TYPE_4__* dev_select ;
 scalar_t__ devstat_compute_statistics (int *,int *,long double,int ,long double*,int ,long double*,int ,long double*,int ) ;
 int devstat_errbuf ;
 int errx (int,char*,int ) ;
 int histogram (long double,int,double) ;
 scalar_t__ kbpt ;
 TYPE_3__ last_dev ;
 int mvwprintw (int ,int,int,char*,long double,long double,long double) ;
 scalar_t__ numbers ;
 int wmove (int ,int ,int) ;
 int wnd ;

__attribute__((used)) static int
devstats(int row, int _col, int dn)
{
 long double transfers_per_second;
 long double kb_per_transfer, mb_per_second;
 long double busy_seconds;
 int di;

 di = dev_select[dn].position;

 busy_seconds = cur_dev.snap_time - last_dev.snap_time;

 if (devstat_compute_statistics(&cur_dev.dinfo->devices[di],
     &last_dev.dinfo->devices[di], busy_seconds,
     DSM_KB_PER_TRANSFER, &kb_per_transfer,
     DSM_TRANSFERS_PER_SECOND, &transfers_per_second,
     DSM_MB_PER_SECOND, &mb_per_second, DSM_NONE) != 0)
  errx(1, "%s", devstat_errbuf);

 if (numbers) {
  mvwprintw(wnd, row, _col, " %5.2Lf %3.0Lf %5.2Lf ",
    kb_per_transfer, transfers_per_second,
    mb_per_second);
  return(row);
 }
 wmove(wnd, row++, _col);
 histogram(mb_per_second, 50, .5);
 wmove(wnd, row++, _col);
 histogram(transfers_per_second, 50, .5);
 if (kbpt) {
  wmove(wnd, row++, _col);
  histogram(kb_per_transfer, 50, .5);
 }

 return(row);

}
