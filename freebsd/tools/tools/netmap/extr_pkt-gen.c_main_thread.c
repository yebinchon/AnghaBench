
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct timeval {int tv_sec; int tv_usec; } ;
struct timespec {int dummy; } ;
struct my_ctrs {scalar_t__ pkts; scalar_t__ bytes; scalar_t__ events; scalar_t__ min_space; int t; } ;
struct glob_arg {int nthreads; int options; int* win; size_t win_idx; double framing; scalar_t__ dev_type; scalar_t__ td_type; int report_interval; } ;
typedef int b4 ;
struct TYPE_3__ {scalar_t__ pkts; scalar_t__ bytes; scalar_t__ events; int min_space; } ;
struct TYPE_4__ {scalar_t__ used; scalar_t__ completed; int toc; int tic; TYPE_1__ ctr; int fd; int * nmd; int thread; } ;


 int D (char*,...) ;
 scalar_t__ DEV_NETMAP ;
 int OPT_PPS_STATS ;
 int STATS_WIN ;
 scalar_t__ TD_TYPE_RECEIVER ;
 scalar_t__ TD_TYPE_SENDER ;
 int close (int ) ;
 int gettimeofday (int *,int *) ;
 int nm_close (int *) ;
 char* norm (char*,int,int ) ;
 int normalize ;
 int pthread_join (int ,int *) ;
 int snprintf (char*,int,char*,char*,char*) ;
 double sqrt (double) ;
 int strcpy (char*,char*) ;
 TYPE_2__* targs ;
 int timerclear (struct timeval*) ;
 int timerisset (struct timeval*) ;
 int timersub (struct timeval*,struct timeval*,struct timeval*) ;
 struct timeval timespec2val (int *) ;
 scalar_t__ timespec_ge (int *,struct timespec*) ;
 struct timespec timeval2spec (struct timeval*) ;
 int tx_output (struct glob_arg*,struct my_ctrs*,double,char*) ;
 int wait_for_next_report (int *,int *,int ) ;

__attribute__((used)) static void
main_thread(struct glob_arg *g)
{
 int i;

 struct my_ctrs prev, cur;
 double delta_t;
 struct timeval tic, toc;

 prev.pkts = prev.bytes = prev.events = 0;
 gettimeofday(&prev.t, ((void*)0));
 for (;;) {
  char b1[40], b2[40], b3[40], b4[100];
  uint64_t pps, usec;
  struct my_ctrs x;
  double abs;
  int done = 0;

  usec = wait_for_next_report(&prev.t, &cur.t,
    g->report_interval);

  cur.pkts = cur.bytes = cur.events = 0;
  cur.min_space = 0;
  if (usec < 10000)
   continue;

  for (i = 0; i < g->nthreads; i++) {
   cur.pkts += targs[i].ctr.pkts;
   cur.bytes += targs[i].ctr.bytes;
   cur.events += targs[i].ctr.events;
   cur.min_space += targs[i].ctr.min_space;
   targs[i].ctr.min_space = 99999;
   if (targs[i].used == 0)
    done++;
  }
  x.pkts = cur.pkts - prev.pkts;
  x.bytes = cur.bytes - prev.bytes;
  x.events = cur.events - prev.events;
  pps = (x.pkts*1000000 + usec/2) / usec;
  abs = (x.events > 0) ? (x.pkts / (double) x.events) : 0;

  if (!(g->options & OPT_PPS_STATS)) {
   strcpy(b4, "");
  } else {

   double ppsavg = 0.0, ppsdev = 0.0;
   int nsamples = 0;

   g->win[g->win_idx] = pps;
   g->win_idx = (g->win_idx + 1) % STATS_WIN;

   for (i = 0; i < STATS_WIN; i++) {
    ppsavg += g->win[i];
    if (g->win[i]) {
     nsamples ++;
    }
   }
   ppsavg /= nsamples;

   for (i = 0; i < STATS_WIN; i++) {
    if (g->win[i] == 0) {
     continue;
    }
    ppsdev += (g->win[i] - ppsavg) * (g->win[i] - ppsavg);
   }
   ppsdev /= nsamples;
   ppsdev = sqrt(ppsdev);

   snprintf(b4, sizeof(b4), "[avg/std %s/%s pps]",
     norm(b1, ppsavg, normalize), norm(b2, ppsdev, normalize));
  }

  D("%spps %s(%spkts %sbps in %llu usec) %.2f avg_batch %d min_space",
   norm(b1, pps, normalize), b4,
   norm(b2, (double)x.pkts, normalize),
   norm(b3, 1000000*((double)x.bytes*8+(double)x.pkts*g->framing)/usec, normalize),
   (unsigned long long)usec,
   abs, (int)cur.min_space);
  prev = cur;

  if (done == g->nthreads)
   break;
 }

 timerclear(&tic);
 timerclear(&toc);
 cur.pkts = cur.bytes = cur.events = 0;

 for (i = 0; i < g->nthreads; i++) {
  struct timespec t_tic, t_toc;




  if (targs[i].used)
   pthread_join(targs[i].thread, ((void*)0));
  if (g->dev_type == DEV_NETMAP) {
   nm_close(targs[i].nmd);
   targs[i].nmd = ((void*)0);
  } else {
   close(targs[i].fd);
  }

  if (targs[i].completed == 0)
   D("ouch, thread %d exited with error", i);





  cur.pkts += targs[i].ctr.pkts;
  cur.bytes += targs[i].ctr.bytes;
  cur.events += targs[i].ctr.events;




  t_tic = timeval2spec(&tic);
  t_toc = timeval2spec(&toc);
  if (!timerisset(&tic) || timespec_ge(&targs[i].tic, &t_tic))
   tic = timespec2val(&targs[i].tic);
  if (!timerisset(&toc) || timespec_ge(&targs[i].toc, &t_toc))
   toc = timespec2val(&targs[i].toc);
 }


 timersub(&toc, &tic, &toc);
 delta_t = toc.tv_sec + 1e-6* toc.tv_usec;
 if (g->td_type == TD_TYPE_SENDER)
  tx_output(g, &cur, delta_t, "Sent");
 else if (g->td_type == TD_TYPE_RECEIVER)
  tx_output(g, &cur, delta_t, "Received");
}
