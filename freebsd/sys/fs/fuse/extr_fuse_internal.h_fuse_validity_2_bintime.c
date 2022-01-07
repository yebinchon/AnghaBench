
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct timespec {scalar_t__ tv_sec; int tv_nsec; } ;
struct bintime {scalar_t__ sec; } ;


 scalar_t__ INT_MAX ;
 int getnanouptime (struct timespec*) ;
 int timespec2bintime (struct timespec*,struct bintime*) ;
 int timespecadd (struct timespec*,struct timespec*,struct timespec*) ;

__attribute__((used)) static inline void
fuse_validity_2_bintime(uint64_t attr_valid, uint32_t attr_valid_nsec,
 struct bintime *timeout)
{
 struct timespec now, duration, timeout_ts;

 getnanouptime(&now);


 if (attr_valid >= INT_MAX || attr_valid + now.tv_sec + 2 >= INT_MAX) {
  timeout->sec = INT_MAX;
 } else {
  duration.tv_sec = attr_valid;
  duration.tv_nsec = attr_valid_nsec;
  timespecadd(&duration, &now, &timeout_ts);
  timespec2bintime(&timeout_ts, timeout);
 }
}
