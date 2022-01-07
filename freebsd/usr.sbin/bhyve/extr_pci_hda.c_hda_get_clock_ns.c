
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct timespec {long long tv_sec; scalar_t__ tv_nsec; } ;


 int CLOCK_MONOTONIC ;
 int assert (int) ;
 int clock_gettime (int ,struct timespec*) ;

__attribute__((used)) static uint64_t hda_get_clock_ns(void)
{
 struct timespec ts;
 int err;

 err = clock_gettime(CLOCK_MONOTONIC, &ts);
 assert(!err);

 return (ts.tv_sec * 1000000000LL + ts.tv_nsec);
}
