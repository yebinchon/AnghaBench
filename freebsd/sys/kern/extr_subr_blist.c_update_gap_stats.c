
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gap_stats {scalar_t__ start; scalar_t__ max; int max_bucket; int err; scalar_t__ avg; int num; int * histo; } ;
typedef scalar_t__ daddr_t ;


 scalar_t__ SWAPBLK_NONE ;
 scalar_t__* fib ;
 int gap_stats_counting (struct gap_stats*) ;
 int nitems (scalar_t__*) ;

__attribute__((used)) static void
update_gap_stats(struct gap_stats *stats, daddr_t posn)
{
 daddr_t size;
 int hi, lo, mid;

 if (!gap_stats_counting(stats)) {
  stats->start = posn;
  return;
 }
 size = posn - stats->start;
 stats->start = SWAPBLK_NONE;
 if (size > stats->max)
  stats->max = size;





 lo = 0;
 hi = 1;
 while (hi < nitems(fib) && fib[hi] <= size) {
  lo = hi;
  hi *= 2;
 }
 if (hi >= nitems(fib))
  hi = nitems(fib);
 while (lo + 1 != hi) {
  mid = (lo + hi) >> 1;
  if (fib[mid] <= size)
   lo = mid;
  else
   hi = mid;
 }
 stats->histo[lo]++;
 if (lo > stats->max_bucket)
  stats->max_bucket = lo;
 stats->err += size - stats->avg;
 stats->num++;
 stats->avg += stats->err / stats->num;
 stats->err %= stats->num;
}
