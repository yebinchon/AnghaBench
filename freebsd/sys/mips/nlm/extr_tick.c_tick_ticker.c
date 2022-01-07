
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;


 scalar_t__ DPCPU_GET (int ) ;
 int counter_lower_last ;
 int counter_upper ;
 int critical_enter () ;
 int critical_exit () ;
 scalar_t__ mips_rd_count () ;

__attribute__((used)) static uint64_t
tick_ticker(void)
{
 uint64_t ret;
 uint32_t ticktock;
 uint32_t t_lower_last, t_upper;




 critical_enter();
 do {
  t_upper = DPCPU_GET(counter_upper);
  t_lower_last = DPCPU_GET(counter_lower_last);
 } while (t_upper != DPCPU_GET(counter_upper));

 ticktock = mips_rd_count();

 critical_exit();


 if (ticktock < t_lower_last)
  t_upper++;

 ret = ((uint64_t)t_upper << 32) | ticktock;
 return (ret);
}
