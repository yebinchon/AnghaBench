
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct timespec {int tv_sec; int tv_nsec; } ;
typedef int sbintime_t ;


 int HYPERV_TIMER_FREQ ;
 int HYPERV_TIMER_NS_FACTOR ;
 struct timespec sbttots (int ) ;

__attribute__((used)) static __inline uint64_t
hyperv_sbintime2count(sbintime_t time)
{
 struct timespec val;

 val = sbttots(time);
 return (val.tv_sec * HYPERV_TIMER_FREQ) +
     (val.tv_nsec / HYPERV_TIMER_NS_FACTOR);
}
