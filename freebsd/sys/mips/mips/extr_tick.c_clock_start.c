
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct eventtimer {int et_frequency; } ;
typedef int sbintime_t ;


 int DPCPU_SET (int ,int) ;
 int compare_ticks ;
 int cycles_per_tick ;
 int mips_rd_count () ;
 int mips_wr_compare (int) ;

__attribute__((used)) static int
clock_start(struct eventtimer *et, sbintime_t first, sbintime_t period)
{
 uint32_t fdiv, div, next;

 if (period != 0) {
  div = (et->et_frequency * period) >> 32;
 } else
  div = 0;
 if (first != 0)
  fdiv = (et->et_frequency * first) >> 32;
 else
  fdiv = div;
 DPCPU_SET(cycles_per_tick, div);
 next = mips_rd_count() + fdiv;
 DPCPU_SET(compare_ticks, next);
 mips_wr_compare(next);
 return (0);
}
