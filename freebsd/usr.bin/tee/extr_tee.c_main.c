
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; int fd; struct TYPE_3__* next; } ;
typedef TYPE_1__ LIST ;


 int BSIZE ;
 int DEFFILEMODE ;
 int EXIT_FAILURE ;
 int O_APPEND ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int SIGINT ;
 int SIG_IGN ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 int add (int,char*) ;
 scalar_t__ caph_enter () ;
 int caph_limit_stderr () ;
 int caph_limit_stdin () ;
 int err (int,char*) ;
 int exit (int) ;
 int getopt (int,char**,char*) ;
 TYPE_1__* head ;
 char* malloc (int ) ;
 int open (char*,int,int ) ;
 scalar_t__ optind ;
 int read (int ,char*,int ) ;
 int signal (int ,int ) ;
 int usage () ;
 int warn (char*,char*) ;
 int write (int ,char*,int) ;

int
main(int argc, char *argv[])
{
 LIST *p;
 int n, fd, rval, wval;
 char *bp;
 int append, ch, exitval;
 char *buf;


 append = 0;
 while ((ch = getopt(argc, argv, "ai")) != -1)
  switch((char)ch) {
  case 'a':
   append = 1;
   break;
  case 'i':
   (void)signal(SIGINT, SIG_IGN);
   break;
  case '?':
  default:
   usage();
  }
 argv += optind;
 argc -= optind;

 if ((buf = malloc((8 * 1024))) == ((void*)0))
  err(1, "malloc");

 if (caph_limit_stdin() == -1 || caph_limit_stderr() == -1)
  err(EXIT_FAILURE, "unable to limit stdio");

 add(STDOUT_FILENO, "stdout");

 for (exitval = 0; *argv; ++argv)
  if ((fd = open(*argv, append ? O_WRONLY|O_CREAT|O_APPEND :
      O_WRONLY|O_CREAT|O_TRUNC, DEFFILEMODE)) < 0) {
   warn("%s", *argv);
   exitval = 1;
  } else
   add(fd, *argv);

 if (caph_enter() < 0)
  err(EXIT_FAILURE, "unable to enter capability mode");
 while ((rval = read(STDIN_FILENO, buf, (8 * 1024))) > 0)
  for (p = head; p; p = p->next) {
   n = rval;
   bp = buf;
   do {
    if ((wval = write(p->fd, bp, n)) == -1) {
     warn("%s", p->name);
     exitval = 1;
     break;
    }
    bp += wval;
   } while (n -= wval);
  }
 if (rval < 0)
  err(1, "read");
 exit(exitval);
}
