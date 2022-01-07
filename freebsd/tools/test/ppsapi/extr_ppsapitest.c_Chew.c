
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;
typedef int intmax_t ;


 int fflush (int ) ;
 int printf (char*,int ,int ,unsigned int) ;
 int stdout ;
 scalar_t__ uflag ;

__attribute__((used)) static void
Chew(struct timespec *tsa, struct timespec *tsc, unsigned sa, unsigned sc)
{
 printf("%jd .%09ld %u", (intmax_t)tsa->tv_sec, tsa->tv_nsec, sa);
 printf(" %jd .%09ld %u\n", (intmax_t)tsc->tv_sec, tsc->tv_nsec, sc);
 if (uflag)
  fflush(stdout);
}
