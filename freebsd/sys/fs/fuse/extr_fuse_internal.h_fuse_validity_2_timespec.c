
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {scalar_t__ tv_sec; int tv_nsec; } ;
struct fuse_entry_out {scalar_t__ entry_valid; int entry_valid_nsec; } ;


 scalar_t__ INT_MAX ;
 int getnanouptime (struct timespec*) ;
 int timespecadd (struct timespec*,struct timespec*,struct timespec*) ;

__attribute__((used)) static inline void
fuse_validity_2_timespec(const struct fuse_entry_out *feo,
 struct timespec *timeout)
{
 struct timespec duration, now;

 getnanouptime(&now);

 if (feo->entry_valid >= INT_MAX ||
     feo->entry_valid + now.tv_sec + 2 >= INT_MAX) {
  timeout->tv_sec = INT_MAX;
 } else {
  duration.tv_sec = feo->entry_valid;
  duration.tv_nsec = feo->entry_valid_nsec;
  timespecadd(&duration, &now, timeout);
 }
}
