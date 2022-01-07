
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kevent {int dummy; } ;
typedef int ncpus ;
typedef int intmax_t ;
typedef int cpu_set_t ;
struct TYPE_2__ {int sin_port; } ;


 int CPU_SET (int,int *) ;
 int CPU_SETSIZE ;
 int CPU_ZERO (int *) ;
 scalar_t__ Pflag ;
 int SYSCTLNAME_CPUS ;
 int bzero (struct kevent*,int) ;
 int err (int,char*,...) ;
 int errx (int,char*,int,...) ;
 scalar_t__ finished ;
 int htons (scalar_t__) ;
 int kevent (scalar_t__,int *,int ,struct kevent*,int,int *) ;
 scalar_t__ kq ;
 scalar_t__ kqueue () ;
 struct kevent* malloc (int) ;
 int mflag ;
 TYPE_1__ remoteip ;
 scalar_t__ rflag ;
 scalar_t__ sched_setaffinity (int ,int ,int *) ;
 int setproctitle (char*,int) ;
 scalar_t__ started ;
 scalar_t__ sysctlbyname (int ,int*,size_t*,int *,int ) ;
 int tcpp_client_handleconn (struct kevent*) ;
 int tcpp_client_newconn () ;
 scalar_t__ tflag ;

__attribute__((used)) static void
tcpp_client_worker(int workernum)
{
 struct kevent *kev_array;
 int i, numevents, kev_bytes;
 setproctitle("tcpp_client %d", workernum);




 remoteip.sin_port = htons(rflag + workernum);

 kev_bytes = sizeof(*kev_array) * mflag;
 kev_array = malloc(kev_bytes);
 if (kev_array == ((void*)0))
  err(-1, "malloc");
 bzero(kev_array, kev_bytes);

 kq = kqueue();
 if (kq < 0)
  err(-1, "kqueue");

 while (finished < tflag) {
  while ((started - finished < mflag) && (started < tflag))
   (void)tcpp_client_newconn();
  numevents = kevent(kq, ((void*)0), 0, kev_array, mflag, ((void*)0));
  if (numevents < 0)
   err(-1, "kevent");
  if (numevents > mflag)
   errx(-1, "kevent: %d", numevents);
  for (i = 0; i < numevents; i++)
   tcpp_client_handleconn(&kev_array[i]);
 }

}
