
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct timespec {int tv_sec; scalar_t__ tv_nsec; } ;
struct kevent {int dummy; } ;


 scalar_t__ EINTR ;
 int assert (int) ;
 scalar_t__ errno ;
 int kevent (int,int *,int ,struct kevent*,int,struct timespec*) ;
 int log_debugx (char*,...) ;
 int log_err (int,char*) ;

__attribute__((used)) static void
do_wait(int kq, time_t sleep_time)
{
 struct timespec timeout;
 struct kevent unused;
 int nevents;

 if (sleep_time != -1) {
  assert(sleep_time > 0);
  timeout.tv_sec = sleep_time;
  timeout.tv_nsec = 0;

  log_debugx("waiting for filesystem event for %ld seconds",
      (long)sleep_time);
  nevents = kevent(kq, ((void*)0), 0, &unused, 1, &timeout);
 } else {
  log_debugx("waiting for filesystem event");
  nevents = kevent(kq, ((void*)0), 0, &unused, 1, ((void*)0));
 }
 if (nevents < 0) {
  if (errno == EINTR)
   return;
  log_err(1, "kevent");
 }

 if (nevents == 0) {
  log_debugx("timeout reached");
  assert(sleep_time > 0);
 } else {
  log_debugx("got filesystem event");
 }
}
