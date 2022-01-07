
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timeval {int tv_sec; int tv_usec; } ;
struct params {scalar_t__ state; scalar_t__ rx; TYPE_1__* q; int last; } ;
typedef int fd_set ;
struct TYPE_2__ {scalar_t__ live; } ;


 scalar_t__ FD_ISSET (scalar_t__,int *) ;
 int FD_SET (scalar_t__,int *) ;
 int FD_ZERO (int *) ;
 scalar_t__ S_START ;
 scalar_t__ S_WAIT_RELAY ;
 int elapsed (int *,struct timeval*) ;
 int err (int,char*) ;
 int gettimeofday (struct timeval*,int *) ;
 int read_wifi (struct params*) ;
 int select (scalar_t__,int *,int *,int *,struct timeval*) ;
 int send_queue (struct params*) ;

void own(struct params *p)
{
 struct timeval tv;
 struct timeval *to = ((void*)0);
 fd_set fds;
 int tout = 10*1000;

 if (p->state == S_WAIT_RELAY) {
  int el;


  if (gettimeofday(&tv, ((void*)0)) == -1)
   err(1, "gettimeofday()");

  el = elapsed(&p->last, &tv);


  if (el >= tout) {
   if (p->q && p->q->live) {
    send_queue(p);
    el = 0;
   } else {
    p->state = S_START;
    return;
   }
  }
  el = tout - el;
  tv.tv_sec = el/1000/1000;
  tv.tv_usec = el - tv.tv_sec*1000*1000;
  to = &tv;
 }

 FD_ZERO(&fds);
 FD_SET(p->rx, &fds);

 if (select(p->rx+1, &fds, ((void*)0), ((void*)0), to) == -1)
  err(1, "select()");

 if (FD_ISSET(p->rx, &fds))
  read_wifi(p);
}
