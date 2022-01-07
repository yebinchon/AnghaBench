
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct timeval {int tv_sec; int tv_usec; } ;


 scalar_t__ EINTR ;
 int abort () ;
 scalar_t__ errno ;
 int gettimeofday (struct timeval*,int *) ;
 int perror (char*) ;
 scalar_t__ select (int ,int *,int *,int *,struct timeval*) ;
 int timersub (struct timeval*,struct timeval*,struct timeval*) ;

__attribute__((used)) static __inline uint64_t
wait_for_next_report(struct timeval *prev, struct timeval *cur,
  int report_interval)
{
 struct timeval delta;

 delta.tv_sec = report_interval/1000;
 delta.tv_usec = (report_interval%1000)*1000;
 if (select(0, ((void*)0), ((void*)0), ((void*)0), &delta) < 0 && errno != EINTR) {
  perror("select");
  abort();
 }
 gettimeofday(cur, ((void*)0));
 timersub(cur, prev, &delta);
 return delta.tv_sec* 1000000 + delta.tv_usec;
}
