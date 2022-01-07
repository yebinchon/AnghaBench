
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;


 int AT_FDCWD ;
 int CLOCK_REALTIME ;
 int UTIME_OMIT ;
 int clock_gettime (int ,struct timespec*) ;
 int utimensat (int ,char*,struct timespec*,int ) ;

void
alter(char *name)
{
 struct timespec ts[2];

 (void)clock_gettime(CLOCK_REALTIME, &ts[0]);
 ts[0].tv_sec++;
 ts[1].tv_sec = 0;
 ts[1].tv_nsec = UTIME_OMIT;
 (void)utimensat(AT_FDCWD, name, ts, 0);
}
