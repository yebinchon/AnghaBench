
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tbuf ;
struct TYPE_4__ {int tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_3__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct itimerval {TYPE_2__ it_value; TYPE_1__ it_interval; } ;
struct flock {int l_start; int l_len; int l_type; int l_whence; } ;
typedef int outbuf ;


 int CHILD_COUNT ;
 scalar_t__ EDEADLK ;
 scalar_t__ EINTR ;
 int FAIL (int) ;
 void* F_RDLCK ;
 int F_SETLKW ;
 int F_UNLCK ;
 void* F_WRLCK ;
 int ITIMER_REAL ;
 int SEEK_SET ;
 int SUCCEED ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int exit (int) ;
 scalar_t__ fcntl (int,int ,struct flock*) ;
 int fflush (int ) ;
 int fork () ;
 int getpid () ;
 int memset (char*,int,int) ;
 int perror (char*) ;
 int pread (int,char*,int,int) ;
 int printf (char*,...) ;
 int pwrite (int,char*,int,int) ;
 int random () ;
 scalar_t__ safe_waitpid (int) ;
 int setitimer (int ,struct itimerval*,int *) ;
 int snprintf (char*,int,char*,int,int,...) ;
 int srandom (int ) ;
 int stdout ;
 int strlen (char*) ;
 int strtol (char const*,int *,int ) ;
 int usleep (int) ;
 scalar_t__ verbose ;
 int write (int,char*,int ) ;

__attribute__((used)) static int
test14(int fd, int argc, const char **argv)
{





 int i, j, id, id_base;
 int pids[20], pid;
 char buf[128];
 char tbuf[128];
 int map[128];
 char outbuf[512];
 struct flock fl;
 struct itimerval itv;
 int status;

 id_base = 0;
 if (argc >= 2)
  id_base = strtol(argv[1], ((void*)0), 0);

 printf("14 - soak test: ");
 fflush(stdout);

 for (i = 0; i < 128; i++)
  map[i] = F_UNLCK;

 for (i = 0; i < 20; i++) {

  pid = fork();
  if (pid < 0)
   err(1, "fork");
  if (pid) {



   pids[i] = pid;
   continue;
  }




  id = id_base + i;
  srandom(getpid());

  for (j = 0; j < 50; j++) {
   int start, end, len;
   int set, wrlock;

   do {
    start = random() & 127;
    end = random() & 127;
   } while (end <= start);

   set = random() & 1;
   wrlock = random() & 1;

   len = end - start;
   fl.l_start = start;
   fl.l_len = len;
   fl.l_whence = SEEK_SET;
   if (set)
    fl.l_type = wrlock ? F_WRLCK : F_RDLCK;
   else
    fl.l_type = F_UNLCK;

   itv.it_interval.tv_sec = 0;
   itv.it_interval.tv_usec = 0;
   itv.it_value.tv_sec = 0;
   itv.it_value.tv_usec = 3000;
   setitimer(ITIMER_REAL, &itv, ((void*)0));

   if (fcntl(fd, F_SETLKW, &fl) < 0) {
    if (errno == EDEADLK || errno == EINTR) {
     if (verbose) {
      snprintf(outbuf, sizeof(outbuf),
          "%d[%d]: %s [%d .. %d] %s\n",
          id, j,
          set ? (wrlock ? "write lock"
       : "read lock")
          : "unlock", start, end,
          errno == EDEADLK
          ? "deadlock"
          : "interrupted");
      write(1, outbuf,
          strlen(outbuf));
     }
     continue;
    } else {
     perror("fcntl");
    }
   }

   itv.it_interval.tv_sec = 0;
   itv.it_interval.tv_usec = 0;
   itv.it_value.tv_sec = 0;
   itv.it_value.tv_usec = 0;
   setitimer(ITIMER_REAL, &itv, ((void*)0));

   if (verbose) {
    snprintf(outbuf, sizeof(outbuf),
        "%d[%d]: %s [%d .. %d] succeeded\n",
        id, j,
        set ? (wrlock ? "write lock" : "read lock")
        : "unlock", start, end);
    write(1, outbuf, strlen(outbuf));
   }

   if (set) {
    if (wrlock) {





     for (i = start; i < end; i++)
      map[i] = F_WRLCK;
     memset(&buf[start], id, len);
     if (pwrite(fd, &buf[start], len,
      start) != len) {
      printf("%d: short write\n", id);
      exit(1);
     }
    } else {







     for (i = start; i < end; i++)
      map[i] = F_RDLCK;
     if (pread(fd, &buf[start], len,
      start) != len) {
      printf("%d: short read\n", id);
      exit(1);
     }
    }
   } else {
    for (i = start; i < end; i++)
     map[i] = F_UNLCK;
   }

   usleep(1000);






   if (pread(fd, tbuf, sizeof(tbuf), 0) != sizeof(tbuf)) {
    printf("%d: short read\n", id);
    exit(1);
   }

   for (i = 0; i < 128; i++) {
    if (map[i] != F_UNLCK && buf[i] != tbuf[i]) {
     snprintf(outbuf, sizeof(outbuf),
         "%d: byte %d expected %d, "
         "got %d\n", id, i, buf[i], tbuf[i]);
     write(1, outbuf, strlen(outbuf));
     exit(1);
    }
   }
  }
  if (verbose)
   printf("%d[%d]: done\n", id, j);

  exit(0);
 }

 status = 0;
 for (i = 0; i < 20; i++) {
  status += safe_waitpid(pids[i]);
 }
 if (status)
  FAIL(status != 0);

 SUCCEED;
}
