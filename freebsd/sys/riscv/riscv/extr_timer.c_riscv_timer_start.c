
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct eventtimer {scalar_t__ et_frequency; } ;
typedef int sbintime_t ;


 int EINVAL ;
 int SIE_STIE ;
 int csr_set (int ,int ) ;
 scalar_t__ get_cycles () ;
 int sbi_set_timer (scalar_t__) ;
 int sie ;

__attribute__((used)) static int
riscv_timer_start(struct eventtimer *et, sbintime_t first, sbintime_t period)
{
 uint64_t counts;

 if (first != 0) {
  counts = ((uint32_t)et->et_frequency * first) >> 32;
  sbi_set_timer(get_cycles() + counts);
  csr_set(sie, SIE_STIE);

  return (0);
 }

 return (EINVAL);

}
