
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct statfs {int f_fstypename; } ;
struct sigaction {scalar_t__ sa_flags; int sa_mask; int sa_handler; } ;
struct TYPE_3__ {int num; int (* testfn ) (int,int,char const**) ;scalar_t__ intr; } ;


 int SIGALRM ;
 int errx (int,char*) ;
 int fstatfs (int,struct statfs*) ;
 int ignore_alarm ;
 int make_file (char const*,int) ;
 unsigned int nitems (TYPE_1__*) ;
 int sigaction (int ,struct sigaction*,int ) ;
 int sigemptyset (int *) ;
 int strcmp (int ,char*) ;
 int strtol (char const*,int *,int ) ;
 int stub1 (int,int,char const**) ;
 TYPE_1__* tests ;

int
main(int argc, const char *argv[])
{
 int testnum;
 int fd;
 int nointr;
 unsigned i;
 struct sigaction sa;
 int test_argc;
 const char **test_argv;

 if (argc < 2) {
  errx(1, "usage: flock <directory> [test number] ...");
 }

 fd = make_file(argv[1], 1024);
 if (argc >= 3) {
  testnum = strtol(argv[2], ((void*)0), 0);
  test_argc = argc - 2;
  test_argv = argv + 2;
 } else {
  testnum = 0;
  test_argc = 0;
  test_argv = ((void*)0);
 }

 sa.sa_handler = ignore_alarm;
 sigemptyset(&sa.sa_mask);
 sa.sa_flags = 0;
 sigaction(SIGALRM, &sa, 0);

 nointr = 0;
 for (i = 0; i < nitems(tests); i++) {
  if (tests[i].intr && nointr)
   continue;
  if (!testnum || tests[i].num == testnum)
   tests[i].testfn(fd, test_argc, test_argv);
 }

 return 0;
}
