
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint64_t ;
typedef int u_int ;
struct timespec {scalar_t__ tv_nsec; int tv_sec; } ;
struct TYPE_10__ {int clear_sequence; struct timespec clear_timestamp; scalar_t__ clear_ffcount; int assert_sequence; struct timespec assert_timestamp; scalar_t__ assert_ffcount; } ;
struct TYPE_9__ {int clear_sequence; struct timespec clear_timestamp; int assert_sequence; struct timespec assert_timestamp; } ;
struct TYPE_8__ {int mode; struct timespec clear_offset; struct timespec assert_offset; } ;
struct pps_state {scalar_t__ capgen; int kcmode; int* ppscount; int capcount; TYPE_5__* capth; TYPE_7__* capffth; TYPE_4__* ppstc; TYPE_3__ ppsinfo_ffc; TYPE_2__ ppsinfo; TYPE_1__ ppsparam; } ;
struct bintime {scalar_t__ frac; scalar_t__ sec; } ;
typedef int pps_seq_t ;
typedef scalar_t__ ffcounter ;
struct TYPE_13__ {int period; } ;
struct TYPE_14__ {struct bintime tick_time; TYPE_6__ cest; scalar_t__ tick_ffcount; } ;
struct TYPE_12__ {scalar_t__ th_generation; int th_offset_count; int th_scale; TYPE_4__* th_counter; struct bintime th_bintime; } ;
struct TYPE_11__ {int tc_counter_mask; int tc_frequency; } ;


 int KASSERT (int ,char*) ;
 int PPS_CAPTUREASSERT ;
 int PPS_CAPTURECLEAR ;
 int PPS_OFFSETASSERT ;
 int PPS_OFFSETCLEAR ;
 scalar_t__ atomic_load_acq_int (scalar_t__*) ;
 int atomic_thread_fence_acq () ;
 int bintime2timespec (struct bintime*,struct timespec*) ;
 int bintime_add (struct bintime*,struct bintime*) ;
 int bintime_addx (struct bintime*,int) ;
 int ffclock_convert_delta (int,int ,struct bintime*) ;
 int hardpps (struct timespec*,scalar_t__) ;
 int timespecadd (struct timespec*,struct timespec*,struct timespec*) ;
 int wakeup (struct pps_state*) ;

void
pps_event(struct pps_state *pps, int event)
{
 struct bintime bt;
 struct timespec ts, *tsp, *osp;
 u_int tcount, *pcount;
 int foff;
 pps_seq_t *pseq;
 KASSERT(pps != ((void*)0), ("NULL pps pointer in pps_event"));

 if ((event & pps->ppsparam.mode) == 0)
  return;

 if (pps->capgen == 0 || pps->capgen !=
     atomic_load_acq_int(&pps->capth->th_generation))
  return;


 if (event == PPS_CAPTUREASSERT) {
  tsp = &pps->ppsinfo.assert_timestamp;
  osp = &pps->ppsparam.assert_offset;
  foff = pps->ppsparam.mode & PPS_OFFSETASSERT;



  pcount = &pps->ppscount[0];
  pseq = &pps->ppsinfo.assert_sequence;





 } else {
  tsp = &pps->ppsinfo.clear_timestamp;
  osp = &pps->ppsparam.clear_offset;
  foff = pps->ppsparam.mode & PPS_OFFSETCLEAR;



  pcount = &pps->ppscount[1];
  pseq = &pps->ppsinfo.clear_sequence;





 }





 if (pps->ppstc != pps->capth->th_counter) {
  pps->ppstc = pps->capth->th_counter;
  *pcount = pps->capcount;
  pps->ppscount[2] = pps->capcount;
  return;
 }


 tcount = pps->capcount - pps->capth->th_offset_count;
 tcount &= pps->capth->th_counter->tc_counter_mask;
 bt = pps->capth->th_bintime;
 bintime_addx(&bt, pps->capth->th_scale * tcount);
 bintime2timespec(&bt, &ts);


 atomic_thread_fence_acq();
 if (pps->capgen != pps->capth->th_generation)
  return;

 *pcount = pps->capcount;
 (*pseq)++;
 *tsp = ts;

 if (foff) {
  timespecadd(tsp, osp, tsp);
  if (tsp->tv_nsec < 0) {
   tsp->tv_nsec += 1000000000;
   tsp->tv_sec -= 1;
  }
 }
 wakeup(pps);
}
