
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {scalar_t__ tv_nsec; scalar_t__ member_1; scalar_t__ tv_sec; scalar_t__ member_0; } ;



__attribute__((used)) static __inline struct timespec
timespec_sub(struct timespec a, struct timespec b)
{
 struct timespec ret = { a.tv_sec - b.tv_sec, a.tv_nsec - b.tv_nsec };
 if (ret.tv_nsec < 0) {
  ret.tv_sec--;
  ret.tv_nsec += 1000000000;
 }
 return ret;
}
