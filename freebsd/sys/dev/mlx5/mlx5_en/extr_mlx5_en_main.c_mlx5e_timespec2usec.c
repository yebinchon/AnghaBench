
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;



__attribute__((used)) static uint64_t
mlx5e_timespec2usec(const struct timespec *ts)
{

 return ((uint64_t)ts->tv_sec * 1000000000 + ts->tv_nsec);
}
