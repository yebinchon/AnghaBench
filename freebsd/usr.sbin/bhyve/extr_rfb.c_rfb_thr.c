
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfb_softc {int enc_raw_ok; int enc_zlib_ok; int enc_resize_ok; scalar_t__ conn_wait; int mtx; int cond; int sfd; } ;
typedef int sigset_t ;


 int SIGPIPE ;
 int SIG_BLOCK ;
 int accept (int ,int *,int *) ;
 int close (int) ;
 int perror (char*) ;
 int pthread_cond_signal (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 scalar_t__ pthread_sigmask (int ,int *,int *) ;
 int rfb_handle (struct rfb_softc*,int) ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;

__attribute__((used)) static void *
rfb_thr(void *arg)
{
 struct rfb_softc *rc;
 sigset_t set;

 int cfd;

 rc = arg;

 sigemptyset(&set);
 sigaddset(&set, SIGPIPE);
 if (pthread_sigmask(SIG_BLOCK, &set, ((void*)0)) != 0) {
  perror("pthread_sigmask");
  return (((void*)0));
 }

 for (;;) {
  rc->enc_raw_ok = 0;
  rc->enc_zlib_ok = 0;
  rc->enc_resize_ok = 0;

  cfd = accept(rc->sfd, ((void*)0), ((void*)0));
  if (rc->conn_wait) {
   pthread_mutex_lock(&rc->mtx);
   pthread_cond_signal(&rc->cond);
   pthread_mutex_unlock(&rc->mtx);
   rc->conn_wait = 0;
  }
  rfb_handle(rc, cfd);
  close(cfd);
 }


 return (((void*)0));
}
