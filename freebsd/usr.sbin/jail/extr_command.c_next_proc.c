
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;
struct kevent {int data; int ident; } ;
struct TYPE_2__ {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;
struct cfjail {int pstatus; int flags; TYPE_1__ timeout; } ;


 int CLOCK_REALTIME ;
 int EINTR ;
 int JF_TIMEOUT ;
 int TAILQ_EMPTY (int *) ;
 struct cfjail* TAILQ_FIRST (int *) ;
 int WNOHANG ;
 int clear_procs (struct cfjail*) ;
 int clock_gettime (int ,struct timespec*) ;
 int err (int,char*) ;
 int errno ;
 struct cfjail* find_proc (int ) ;
 int kevent (int ,int *,int ,struct kevent*,int,struct timespec*) ;
 int kq ;
 int sleeping ;
 int waitpid (int ,int *,int ) ;

struct cfjail *
next_proc(int nonblock)
{
 struct kevent ke;
 struct timespec ts;
 struct timespec *tsp;
 struct cfjail *j;

 if (!TAILQ_EMPTY(&sleeping)) {
 again:
  tsp = ((void*)0);
  if ((j = TAILQ_FIRST(&sleeping)) && j->timeout.tv_sec) {
   clock_gettime(CLOCK_REALTIME, &ts);
   ts.tv_sec = j->timeout.tv_sec - ts.tv_sec;
   ts.tv_nsec = j->timeout.tv_nsec - ts.tv_nsec;
   if (ts.tv_nsec < 0) {
    ts.tv_sec--;
    ts.tv_nsec += 1000000000;
   }
   if (ts.tv_sec < 0 ||
       (ts.tv_sec == 0 && ts.tv_nsec == 0)) {
    j->flags |= JF_TIMEOUT;
    clear_procs(j);
    return j;
   }
   tsp = &ts;
  }
  if (nonblock) {
   ts.tv_sec = 0;
   ts.tv_nsec = 0;
   tsp = &ts;
  }
  switch (kevent(kq, ((void*)0), 0, &ke, 1, tsp)) {
  case -1:
   if (errno != EINTR)
    err(1, "kevent");
   goto again;
  case 0:
   if (!nonblock) {
    j = TAILQ_FIRST(&sleeping);
    j->flags |= JF_TIMEOUT;
    clear_procs(j);
    return j;
   }
   break;
  case 1:
   (void)waitpid(ke.ident, ((void*)0), WNOHANG);
   if ((j = find_proc(ke.ident))) {
    j->pstatus = ke.data;
    return j;
   }
   goto again;
  }
 }
 return ((void*)0);
}
