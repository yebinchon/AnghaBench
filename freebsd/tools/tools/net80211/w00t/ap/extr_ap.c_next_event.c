
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; int tv_usec; } ;
struct params {int bint; int rx; int tap; int plast; scalar_t__ packet_try; int blast; } ;
typedef int fd_set ;


 scalar_t__ FD_ISSET (int,int *) ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int elapsed (int *,struct timeval*) ;
 int err (int,char*) ;
 int gettimeofday (struct timeval*,int *) ;
 int read_tap (struct params*) ;
 int read_wifi (struct params*) ;
 scalar_t__ retransmit (struct params*) ;
 int select (int,int *,int *,int *,struct timeval*) ;
 int send_beacon (struct params*) ;

void next_event(struct params *p)
{
 struct timeval to, now;
 int el;
 int max;
 fd_set fds;
 int rtr = 3*1000;


 if (gettimeofday(&now, ((void*)0)) == -1)
  err(1, "gettimeofday()");


 el = elapsed(&p->blast, &now);
 if (el >= p->bint) {
  send_beacon(p);
  el = 0;
 }
 el = p->bint - el;
 to.tv_sec = el/1000/1000;
 to.tv_usec = el - to.tv_sec*1000*1000;


 if (p->packet_try) {
  el = elapsed(&p->plast, &now);
  if (el >= rtr) {

   if (retransmit(p)) {
    el = 0;
   }
   else
    el = -1;
  }


  if (el != -1) {
   el = rtr - el;
   if ((to.tv_sec*1000*1000 + to.tv_usec) > el) {
    to.tv_sec = el/1000/1000;
    to.tv_usec = el - to.tv_sec*1000*1000;
   }
  }
 }


 FD_ZERO(&fds);
 FD_SET(p->rx, &fds);
 FD_SET(p->tap, &fds);
 max = p->rx > p->tap ? p->rx : p->tap;
 if (select(max+1, &fds, ((void*)0), ((void*)0), &to) == -1)
  err(1, "select()");

 if (FD_ISSET(p->tap, &fds))
  read_tap(p);
 if (FD_ISSET(p->rx, &fds))
  read_wifi(p);
}
