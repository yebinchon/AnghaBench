
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ u_int64_t ;


 scalar_t__ MIPS_DEFAULT_HZ ;
 int RTCSA_TUP ;
 int RTCSB_BCD ;
 int RTC_STATUSA ;
 int RTC_STATUSB ;
 scalar_t__ mips_rd_count () ;
 int rtcin (int ) ;
 int writertc (int ,int) ;
 scalar_t__ yamon_getcpufreq () ;

__attribute__((used)) static uint64_t
malta_cpu_freq(void)
{
 uint64_t platform_counter_freq = 0;
 if (platform_counter_freq == 0)
  platform_counter_freq = MIPS_DEFAULT_HZ;

 return (platform_counter_freq);
}
