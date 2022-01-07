
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct rfb_softc {int cfd; } ;
typedef int int64_t ;
typedef int fd_set ;


 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int gettimeofday (struct timeval*,int *) ;
 scalar_t__ rfb_send_screen (struct rfb_softc*,int,int ) ;
 int select (int,int *,int *,int *,struct timeval*) ;
 int timeval_delta (struct timeval*,struct timeval*) ;
 int usleep (int) ;

__attribute__((used)) static void *
rfb_wr_thr(void *arg)
{
 struct rfb_softc *rc;
 fd_set rfds;
 struct timeval tv;
 struct timeval prev_tv;
 int64_t tdiff;
 int cfd;
 int err;

 rc = arg;
 cfd = rc->cfd;

 prev_tv.tv_sec = 0;
 prev_tv.tv_usec = 0;
 while (rc->cfd >= 0) {
  FD_ZERO(&rfds);
  FD_SET(cfd, &rfds);
  tv.tv_sec = 0;
  tv.tv_usec = 10000;

  err = select(cfd+1, &rfds, ((void*)0), ((void*)0), &tv);
  if (err < 0)
   return (((void*)0));


  gettimeofday(&tv, ((void*)0));
  tdiff = timeval_delta(&prev_tv, &tv);
  if (tdiff > 40000) {
   prev_tv.tv_sec = tv.tv_sec;
   prev_tv.tv_usec = tv.tv_usec;
   if (rfb_send_screen(rc, cfd, 0) <= 0) {
    return (((void*)0));
   }
  } else {

   usleep(40000 - tdiff);
  }
 }

 return (((void*)0));
}
