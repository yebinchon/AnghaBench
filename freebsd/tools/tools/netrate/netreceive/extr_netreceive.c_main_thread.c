
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct timespec {int tv_sec; int tv_nsec; } ;
struct td_desc {int count; int byte_count; } ;
typedef int int64_t ;


 int CLOCK_REALTIME ;
 int clock_gettime (int ,struct timespec*) ;
 int fprintf (int ,char*,int,int,...) ;
 int perror (char*) ;
 scalar_t__ poll (int *,int ,int) ;
 int stderr ;
 int timespec_sub (struct timespec*,struct timespec*) ;

__attribute__((used)) static void
main_thread(struct td_desc **tp, int nsock, int nthreads)
{
 uint64_t c0, c1, bc0, bc1;
 struct timespec now, then, delta;

 c0 = c1 = bc0 = bc1 = 0;
 clock_gettime(CLOCK_REALTIME, &then);
 fprintf(stderr, "start at %ld.%09ld\n", then.tv_sec, then.tv_nsec);
 while (1) {
  int i, nt = nsock * nthreads;
  int64_t dn;
  uint64_t pps, bps;

  if (poll(((void*)0), 0, 500) < 0)
   perror("poll");
  c0 = bc0 = 0;
  for (i = 0; i < nt; i++) {
   c0 += tp[i]->count;
   bc0 += tp[i]->byte_count;
  }
  dn = c0 - c1;
  clock_gettime(CLOCK_REALTIME, &now);
  delta = now;
  timespec_sub(&delta, &then);
  then = now;
  pps = dn;
  pps = (pps * 1000000000) / (delta.tv_sec*1000000000 + delta.tv_nsec + 1);
  bps = ((bc0 - bc1) * 8000000000) / (delta.tv_sec*1000000000 + delta.tv_nsec + 1);
  fprintf(stderr, " %9ld pps %8.3f Mbps", (long)pps, .000001*bps);
  fprintf(stderr, " - %d pkts in %ld.%09ld ns\n",
   (int)dn, delta.tv_sec, delta.tv_nsec);
  c1 = c0;
  bc1 = bc0;
 }
}
