
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uintmax_t ;
struct timespec {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct test {char* t_name; int t_flags; int (* t_func ) (int,int ,char const*) ;int t_int; } ;
struct TYPE_4__ {int tv_sec; scalar_t__ tv_nsec; } ;


 int CLOCK_REALTIME ;
 scalar_t__ ENOENT ;
 int FLAG_PATH ;
 int O_CREAT ;
 int O_WRONLY ;
 int UINT64_MAX ;
 int alarm_timeout ;
 int asprintf (char**,char*,char*) ;
 int assert (int) ;
 int clock_getres (int ,struct timespec*) ;
 int close (int) ;
 int err (int,char*,...) ;
 scalar_t__ errno ;
 int ftruncate (int,int) ;
 int getopt (int,char**,char*) ;
 char* mkdtemp (char*) ;
 int open (char*,int,int) ;
 char* optarg ;
 scalar_t__ optind ;
 int printf (char*,...) ;
 int rmdir (char*) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strdup (char*) ;
 long long strtol (char*,char**,int) ;
 int stub1 (int,int ,char const*) ;
 int stub2 (int,int ,char const*) ;
 struct test* tests ;
 int tests_count ;
 int timespecsub (TYPE_1__*,int *,TYPE_1__*) ;
 TYPE_1__ ts_end ;
 int ts_start ;
 int unlink (char*) ;
 int usage () ;
 int warn (char*,char*) ;

int
main(int argc, char *argv[])
{
 struct timespec ts_res;
 const struct test *the_test;
 const char *path;
 char *tmp_dir, *tmp_path;
 long long ll;
 char *endp;
 int ch, fd, error, i, j, rv;
 uintmax_t iterations, k, loops;

 alarm_timeout = 1;
 iterations = 0;
 loops = 10;
 path = ((void*)0);
 tmp_path = ((void*)0);
 while ((ch = getopt(argc, argv, "i:l:p:s:")) != -1) {
  switch (ch) {
  case 'i':
   ll = strtol(optarg, &endp, 10);
   if (*endp != 0 || ll < 1)
    usage();
   iterations = ll;
   break;

  case 'l':
   ll = strtol(optarg, &endp, 10);
   if (*endp != 0 || ll < 1 || ll > 100000)
    usage();
   loops = ll;
   break;

  case 'p':
   path = optarg;
   break;

  case 's':
   ll = strtol(optarg, &endp, 10);
   if (*endp != 0 || ll < 1 || ll > 60*60)
    usage();
   alarm_timeout = ll;
   break;

  case '?':
  default:
   usage();
  }
 }
 argc -= optind;
 argv += optind;

 if (iterations < 1 && alarm_timeout < 1)
  usage();
 if (iterations < 1)
  iterations = UINT64_MAX;
 if (loops < 1)
  loops = 1;

 if (argc < 1)
  usage();





 for (j = 0; j < argc; j++) {
  the_test = ((void*)0);
  for (i = 0; i < tests_count; i++) {
   if (strcmp(argv[j], tests[i].t_name) == 0)
    the_test = &tests[i];
  }
  if (the_test == ((void*)0))
   usage();
  if ((the_test->t_flags & FLAG_PATH) && (path == ((void*)0))) {
   tmp_dir = strdup("/tmp/syscall_timing.XXXXXXXX");
   if (tmp_dir == ((void*)0))
    err(1, "strdup");
   tmp_dir = mkdtemp(tmp_dir);
   if (tmp_dir == ((void*)0))
    err(1, "mkdtemp");
   rv = asprintf(&tmp_path, "%s/testfile", tmp_dir);
   if (rv <= 0)
    err(1, "asprintf");
  }
 }

 error = clock_getres(CLOCK_REALTIME, &ts_res);
 assert(error == 0);
 printf("Clock resolution: %ju.%09ju\n", (uintmax_t)ts_res.tv_sec,
     (uintmax_t)ts_res.tv_nsec);
 printf("test\tloop\ttime\titerations\tperiteration\n");

 for (j = 0; j < argc; j++) {
  uintmax_t calls, nsecsperit;

  the_test = ((void*)0);
  for (i = 0; i < tests_count; i++) {
   if (strcmp(argv[j], tests[i].t_name) == 0)
    the_test = &tests[i];
  }

  if (tmp_path != ((void*)0)) {
   fd = open(tmp_path, O_WRONLY | O_CREAT, 0700);
   if (fd < 0)
    err(1, "cannot open %s", tmp_path);
   error = ftruncate(fd, 1000000);
   if (error != 0)
    err(1, "ftruncate");
   error = close(fd);
   if (error != 0)
    err(1, "close");
   path = tmp_path;
  }




  the_test->t_func(iterations, the_test->t_int, path);
  calls = 0;
  for (k = 0; k < loops; k++) {
   calls = the_test->t_func(iterations, the_test->t_int,
       path);
   timespecsub(&ts_end, &ts_start, &ts_end);
   printf("%s\t%ju\t", the_test->t_name, k);
   printf("%ju.%09ju\t%ju\t", (uintmax_t)ts_end.tv_sec,
       (uintmax_t)ts_end.tv_nsec, calls);







   nsecsperit = ts_end.tv_sec * 1000000000;
   nsecsperit += ts_end.tv_nsec;
   nsecsperit /= calls;
   printf("0.%09ju\n", (uintmax_t)nsecsperit);
  }
 }

 if (tmp_path != ((void*)0)) {
  error = unlink(tmp_path);
  if (error != 0 && errno != ENOENT)
   warn("cannot unlink %s", tmp_path);
  error = rmdir(tmp_dir);
  if (error != 0)
   warn("cannot rmdir %s", tmp_dir);
 }

 return (0);
}
