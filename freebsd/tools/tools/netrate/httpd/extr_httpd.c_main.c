
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef char u_char ;
struct state {scalar_t__ listen_sock; char* path; scalar_t__ data_file; TYPE_1__* hts; int utsname; } ;
struct sockaddr_in {int sin_len; int sin_port; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int ssize_t ;
typedef int sin ;
typedef scalar_t__ pid_t ;
struct TYPE_4__ {scalar_t__ hts_fd; scalar_t__ hts_pid; int hts_thread; } ;


 int AF_INET ;
 int FILESIZE ;
 int INHERIT_SHARE ;
 int MAP_ANON ;
 char* MAP_FAILED ;
 int O_RDONLY ;
 int PATH_MAX ;
 int PF_INET ;
 int PROT_READ ;
 int PROT_WRITE ;
 int SOCK_STREAM ;
 int THREADS ;
 int atoi (char*) ;
 scalar_t__ bind (scalar_t__,struct sockaddr*,int) ;
 int bzero (struct sockaddr_in*,int) ;
 int err (int,char*,...) ;
 int errno ;
 int errx (int,char*) ;
 scalar_t__ fork () ;
 int getopt (int,char**,char*) ;
 int getpagesize () ;
 int htons (int ) ;
 int httpd_worker (TYPE_1__*) ;
 int killall () ;
 scalar_t__ listen (scalar_t__,int) ;
 int memset (char*,char,int) ;
 scalar_t__ minherit (char*,int,int ) ;
 scalar_t__ mkstemp (char*) ;
 char* mmap (int *,int,int,int ,int,int ) ;
 scalar_t__ open (char*,int ) ;
 scalar_t__ optind ;
 scalar_t__ pthread_create (int *,int *,int (*) (TYPE_1__*),TYPE_1__*) ;
 scalar_t__ pthread_join (int ,int *) ;
 int roundup (int,int ) ;
 int snprintf (char*,int,char*) ;
 scalar_t__ socket (int ,int ,int ) ;
 struct state* statep ;
 int threaded ;
 scalar_t__ uname (int *) ;
 int unlink (char*) ;
 int usage () ;
 scalar_t__ waitpid (scalar_t__,int *,int ) ;
 int write (scalar_t__,char*,int) ;

int
main(int argc, char *argv[])
{
 u_char filebuffer[FILESIZE];
 char temppath[PATH_MAX];
 struct sockaddr_in sin;
 int ch, error, i;
 char *pagebuffer;
 ssize_t len;
 pid_t pid;


 while ((ch = getopt(argc, argv, "t")) != -1) {
  switch (ch) {
  case 't':
   threaded = 1;
   break;

  default:
   usage();
  }
 }
 argc -= optind;
 argv += optind;

 if (argc != 1 && argc != 2)
  usage();

 len = roundup(sizeof(struct state), getpagesize());
 pagebuffer = mmap(((void*)0), len, PROT_READ | PROT_WRITE, MAP_ANON, -1, 0);
 if (pagebuffer == MAP_FAILED)
  err(-1, "mmap");
 if (minherit(pagebuffer, len, INHERIT_SHARE) < 0)
  err(-1, "minherit");
 statep = (struct state *)pagebuffer;

 if (uname(&statep->utsname) < 0)
  err(-1, "utsname");

 statep->listen_sock = socket(PF_INET, SOCK_STREAM, 0);
 if (statep->listen_sock < 0)
  err(-1, "socket(PF_INET, SOCK_STREAM)");

 bzero(&sin, sizeof(sin));
 sin.sin_len = sizeof(sin);
 sin.sin_family = AF_INET;
 sin.sin_port = htons(atoi(argv[0]));





 statep->path = argv[1];
 if (statep->path != ((void*)0)) {
  statep->data_file = open(statep->path, O_RDONLY);
  if (statep->data_file < 0)
   err(-1, "open: %s", statep->path);
  for (i = 0; i < THREADS; i++)
   statep->hts[i].hts_fd = statep->data_file;
 } else {
  memset(filebuffer, 'A', FILESIZE - 1);
  filebuffer[FILESIZE - 1] = '\n';
  for (i = 0; i < THREADS; i++) {
   snprintf(temppath, PATH_MAX, "/tmp/httpd.XXXXXXXXXXX");
   statep->hts[i].hts_fd = mkstemp(temppath);
   if (statep->hts[i].hts_fd < 0)
    err(-1, "mkstemp");
   (void)unlink(temppath);
   len = write(statep->hts[i].hts_fd, filebuffer,
       FILESIZE);
   if (len < 0)
    err(-1, "write");
   if (len < FILESIZE)
    errx(-1, "write: short");
  }
 }

 if (bind(statep->listen_sock, (struct sockaddr *)&sin,
     sizeof(sin)) < 0)
  err(-1, "bind");

 if (listen(statep->listen_sock, -1) < 0)
  err(-1, "listen");

 for (i = 0; i < THREADS; i++) {
  if (threaded) {
   if (pthread_create(&statep->hts[i].hts_thread, ((void*)0),
       httpd_worker, &statep->hts[i]) != 0)
    err(-1, "pthread_create");
  } else {
   pid = fork();
   if (pid < 0) {
    error = errno;
    killall();
    errno = error;
    err(-1, "fork");
   }
   if (pid == 0)
    httpd_worker(&statep->hts[i]);
   statep->hts[i].hts_pid = pid;
  }
 }

 for (i = 0; i < THREADS; i++) {
  if (threaded) {
   if (pthread_join(statep->hts[i].hts_thread, ((void*)0))
       != 0)
    err(-1, "pthread_join");
  } else {
   pid = waitpid(statep->hts[i].hts_pid, ((void*)0), 0);
   if (pid == statep->hts[i].hts_pid)
    statep->hts[i].hts_pid = 0;
  }
 }
 if (!threaded)
  killall();
 return (0);
}
