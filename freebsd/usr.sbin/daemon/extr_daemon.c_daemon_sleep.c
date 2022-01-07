
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct timespec {long member_1; int member_0; } ;


 scalar_t__ EINTR ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int nanosleep (struct timespec*,struct timespec*) ;
 int terminate ;

__attribute__((used)) static void
daemon_sleep(time_t secs, long nsecs)
{
 struct timespec ts = { secs, nsecs };

 while (!terminate && nanosleep(&ts, &ts) == -1) {
  if (errno != EINTR)
   err(1, "nanosleep");
 }
}
