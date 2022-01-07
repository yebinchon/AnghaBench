
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct http_worker_description {int hwd_count; int hwd_errorcount; } ;
struct TYPE_2__ {int run_done; int path; int sin; int start_barrier; } ;


 int PTHREAD_BARRIER_SERIAL_THREAD ;
 int QUIET ;
 int err (int,char*) ;
 int exit (int ) ;
 scalar_t__ http_fetch (int *,int ,int ) ;
 int pthread_barrier_wait (int *) ;
 int signal_barrier_wait () ;
 TYPE_1__* statep ;
 scalar_t__ threaded ;

__attribute__((used)) static void *
http_worker(void *arg)
{
 struct http_worker_description *hwdp;
 int ret;

 if (threaded) {
  ret = pthread_barrier_wait(&statep->start_barrier);
  if (ret != 0 && ret != PTHREAD_BARRIER_SERIAL_THREAD)
   err(-1, "pthread_barrier_wait");
 } else {
  signal_barrier_wait();
 }

 hwdp = arg;
 while (!statep->run_done) {
  if (http_fetch(&statep->sin, statep->path, QUIET) < 0) {
   hwdp->hwd_errorcount++;
   continue;
  }

  if (!statep->run_done)
   hwdp->hwd_count++;
 }

 if (threaded)
  return (((void*)0));
 else
  exit(0);
}
