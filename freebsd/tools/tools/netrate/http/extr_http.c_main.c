
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uintmax_t ;
struct TYPE_7__ {int s_addr; } ;
struct TYPE_9__ {int sin_len; int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct state {char* path; int run_done; TYPE_2__* hwd; int start_barrier; TYPE_5__ sin; } ;
typedef scalar_t__ pid_t ;
struct TYPE_8__ {scalar_t__ hwd_pid; scalar_t__ hwd_errorcount; scalar_t__ hwd_count; int hwd_thread; } ;


 int AF_INET ;
 int DEFAULTSECONDS ;
 int DEFAULTTHREADS ;
 int INHERIT_SHARE ;
 int MAP_ANON ;
 struct state* MAP_FAILED ;
 int MAXTHREADS ;
 int PROT_READ ;
 int PROT_WRITE ;
 int SIGHUP ;
 int atoi (char*) ;
 int bzero (TYPE_5__*,int) ;
 int curthread ;
 int err (int,char*) ;
 int errno ;
 int errx (int,char*,int,int) ;
 int exit (int) ;
 scalar_t__ fork () ;
 int getopt (int,char**,char*) ;
 int getpagesize () ;
 int htons (int) ;
 scalar_t__ http_fetch (TYPE_5__*,char*,int ) ;
 int http_worker (TYPE_2__*) ;
 int inet_addr (char*) ;
 int killall () ;
 int main_sighup ;
 scalar_t__ minherit (struct state*,size_t,int ) ;
 struct state* mmap (int *,size_t,int,int ,int,int ) ;
 int numseconds ;
 int numthreads ;
 char* optarg ;
 scalar_t__ optind ;
 int printf (char*,...) ;
 scalar_t__ pthread_barrier_init (int *,int *,int) ;
 scalar_t__ pthread_create (int *,int *,int (*) (TYPE_2__*),TYPE_2__*) ;
 scalar_t__ pthread_join (int ,int *) ;
 size_t roundup (int,int ) ;
 int signal (int ,int ) ;
 int signal_barrier_wakeup () ;
 int sleep (int) ;
 struct state* statep ;
 int threaded ;
 int usage () ;
 scalar_t__ waitpid (scalar_t__,int *,int ) ;

int
main(int argc, char *argv[])
{
 int ch, error, i;
 struct state *pagebuffer;
 uintmax_t total;
 size_t len;
 pid_t pid;

 numthreads = DEFAULTTHREADS;
 numseconds = DEFAULTSECONDS;
 while ((ch = getopt(argc, argv, "n:s:t")) != -1) {
  switch (ch) {
  case 'n':
   numthreads = atoi(optarg);
   break;

  case 's':
   numseconds = atoi(optarg);
   break;

  case 't':
   threaded = 1;
   break;

  default:
   usage();
  }
 }
 argc -= optind;
 argv += optind;

 if (argc != 3)
  usage();

 if (numthreads > MAXTHREADS)
  errx(-1, "%d exceeds max threads %d", numthreads,
      MAXTHREADS);

 len = roundup(sizeof(struct state), getpagesize());
 pagebuffer = mmap(((void*)0), len, PROT_READ | PROT_WRITE, MAP_ANON, -1, 0);
 if (pagebuffer == MAP_FAILED)
  err(-1, "mmap");
 if (minherit(pagebuffer, len, INHERIT_SHARE) < 0)
  err(-1, "minherit");
 statep = pagebuffer;

 bzero(&statep->sin, sizeof(statep->sin));
 statep->sin.sin_len = sizeof(statep->sin);
 statep->sin.sin_family = AF_INET;
 statep->sin.sin_addr.s_addr = inet_addr(argv[0]);
 statep->sin.sin_port = htons(atoi(argv[1]));
 statep->path = argv[2];




 if (http_fetch(&statep->sin, statep->path, 0) < 0)
  exit(-1);

 if (threaded) {
  if (pthread_barrier_init(&statep->start_barrier, ((void*)0),
      numthreads) != 0)
   err(-1, "pthread_barrier_init");
 }

 for (i = 0; i < numthreads; i++) {
  statep->hwd[i].hwd_count = 0;
  if (threaded) {
   if (pthread_create(&statep->hwd[i].hwd_thread, ((void*)0),
       http_worker, &statep->hwd[i]) != 0)
    err(-1, "pthread_create");
  } else {
   curthread = i;
   pid = fork();
   if (pid < 0) {
    error = errno;
    killall();
    errno = error;
    err(-1, "fork");
   }
   if (pid == 0) {
    http_worker(&statep->hwd[i]);
    printf("Doh\n");
    exit(0);
   }
   statep->hwd[i].hwd_pid = pid;
  }
 }
 if (!threaded) {
  signal(SIGHUP, main_sighup);
  sleep(2);
  signal_barrier_wakeup();
 }
 sleep(numseconds);
 statep->run_done = 1;
 if (!threaded)
  sleep(2);
 for (i = 0; i < numthreads; i++) {
  if (threaded) {
   if (pthread_join(statep->hwd[i].hwd_thread, ((void*)0))
       != 0)
    err(-1, "pthread_join");
  } else {
   pid = waitpid(statep->hwd[i].hwd_pid, ((void*)0), 0);
   if (pid == statep->hwd[i].hwd_pid)
    statep->hwd[i].hwd_pid = 0;
  }
 }
 if (!threaded)
  killall();
 total = 0;
 for (i = 0; i < numthreads; i++)
  total += statep->hwd[i].hwd_count;
 printf("%ju transfers/second\n", total / numseconds);
 total = 0;
 for (i = 0; i < numthreads; i++)
  total += statep->hwd[i].hwd_errorcount;
 printf("%ju errors/second\n", total / numseconds);
 return (0);
}
