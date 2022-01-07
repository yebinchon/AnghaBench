
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int tm_year; int tm_isdst; void* tm_min; void* tm_hour; void* tm_mday; void* tm_mon; } ;
struct timespec {int tv_sec; scalar_t__ tv_nsec; } ;


 void* ATOI2 (char const*) ;
 int err (int,char*) ;
 int errx (int,char*) ;
 struct tm* localtime (int *) ;
 int mktime (struct tm*) ;
 int time (int *) ;

__attribute__((used)) static void
stime_arg2(const char *arg, int year, struct timespec *tvp)
{
 time_t now;
 struct tm *t;

 now = time(((void*)0));
 if ((t = localtime(&now)) == ((void*)0))
  err(1, "localtime");

 t->tm_mon = ATOI2(arg);
 --t->tm_mon;
 t->tm_mday = ATOI2(arg);
 t->tm_hour = ATOI2(arg);
 t->tm_min = ATOI2(arg);
 if (year) {
  t->tm_year = ATOI2(arg);
  if (t->tm_year < 39)
   t->tm_year += 100;
 }

 t->tm_isdst = -1;
 tvp[0].tv_sec = tvp[1].tv_sec = mktime(t);
 if (tvp[0].tv_sec == -1)
  errx(1,
 "out of range or illegal time specification: MMDDhhmm[yy]");

 tvp[0].tv_nsec = tvp[1].tv_nsec = 0;
}
