
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timeval {int dummy; } ;
struct timespec {int tv_nsec; } ;
struct sched_param {int sched_priority; } ;
struct TYPE_2__ {int tv_usec; int tv_sec; } ;
struct itimerval {TYPE_1__ it_value; } ;


 int ITIMER_REAL ;
 int MAP_ANON ;
 int MAP_SHARED ;
 int MAX_RANAT ;
 int PROT_READ ;
 int PROT_WRITE ;
 int SCHED_FIFO ;
 int SCHED_RR ;
 int SIGALRM ;
 int atexit (int ) ;
 long volatile child ;
 int err (int,char*) ;
 int errno ;
 int exit (int) ;
 long fork () ;
 int fprintf (int ,char*,...) ;
 long getpid () ;
 int gettimeofday (struct timeval*,int ) ;
 scalar_t__ mmap (int ,int,int,int,int,int ) ;
 int perror (char*) ;
 int sched_rr_get_interval (int ,struct timespec*) ;
 int sched_setscheduler (long volatile,int ,struct sched_param*) ;
 int setitimer (int ,struct itimerval*,int ) ;
 int signal (int ,int ) ;
 int stderr ;
 int tick ;
 scalar_t__ ticked ;
 int tidyup ;
 double tvsub (struct timeval*,struct timeval*) ;

int fifo(int argc, char *argv[])
{
 int e = 0;
 volatile long *p, pid;
 int i;
 struct sched_param fifo_param;
 struct timespec interval;

 struct timeval ranat[32];
 if (sched_rr_get_interval(0, &interval) == -1) {
  perror("sched_rr_get_interval");
  exit(errno);
 }





 fifo_param.sched_priority = 1;

 p = (long *)mmap(0, sizeof(*p),
 PROT_READ|PROT_WRITE, MAP_ANON|MAP_SHARED, -1, 0);

 if (p == (long *)-1)
  err(errno, "mmap");

 *p = 0;

 if (sched_setscheduler(0, SCHED_FIFO, &fifo_param) == -1)
 {
  perror("sched_setscheduler");
  return -1;
 }

 pid = getpid();

 if ((child = fork()) == 0)
 {




  pid = getpid();
  while (1)
   *p = pid;
 }
 else
 {
  atexit(tidyup);
  *p = pid;


  ticked = 0;
  gettimeofday(ranat, 0);
  i = 1;
  while (!ticked && i < 32)
   if (*p == child) {
    gettimeofday(ranat + i, 0);
    *p = 0;
    e = -1;
    i++;
   }

  if (e) {
   int j;

   fprintf(stderr,
   "SCHED_FIFO had erroneous context switches:\n");
   for (j = 1; j < i; j++) {
    fprintf(stderr, "%d %g\n", j,
     tvsub(ranat + j, ranat + j - 1));
   }
   return e;
  }




  if (sched_setscheduler(child, SCHED_RR, &fifo_param) == -1 ||
  sched_setscheduler(0, SCHED_RR, &fifo_param) == -1)
  {
   perror("sched_setscheduler");
   return -1;
  }

  e = -1;

  ticked = 0;
  for (i = 0; !ticked; i++)
   if (*p == child) {
    e = 0;
    break;
   }

  if (e)
   fprintf(stderr,"Child never ran when it should have.\n");
 }

 exit(e);
}
