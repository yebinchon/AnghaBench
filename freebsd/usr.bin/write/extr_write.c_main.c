
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int time_t ;
struct passwd {char* pw_name; } ;
typedef int cap_rights_t ;


 int CAP_FCNTL ;
 int CAP_FCNTL_GETFL ;
 int CAP_FSTAT ;
 int CAP_IOCTL ;
 int CAP_LOOKUP ;
 int CAP_PWRITE ;
 int CAP_READ ;
 int CAP_WRITE ;
 unsigned long FIODGNAME ;
 int LC_CTYPE ;
 int MAXPATHLEN ;
 int O_RDONLY ;
 int STDERR_FILENO ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 unsigned long TIOCGETA ;
 unsigned long TIOCGWINSZ ;
 int _PATH_DEV ;
 int cap_rights_init (int *,int ,int ,int ,int ,int ) ;
 int caph_cache_catpages () ;
 int caph_cache_tzdata () ;
 scalar_t__ caph_enter () ;
 scalar_t__ caph_fcntls_limit (int,int ) ;
 scalar_t__ caph_ioctls_limit (int,unsigned long*,int ) ;
 scalar_t__ caph_rights_limit (int,int *) ;
 int do_write (int,char*,char*,char const*) ;
 int done (int ) ;
 int err (int,char*) ;
 int errx (int,char*,...) ;
 int exit (int) ;
 int fileno (int ) ;
 char* getlogin () ;
 int getopt (int,char**,char*) ;
 struct passwd* getpwuid (int ) ;
 int getuid () ;
 scalar_t__ isatty (int) ;
 int nitems (unsigned long*) ;
 int open (int ,int ) ;
 scalar_t__ optind ;
 int search_utmp (int,char*,char*,char*,int ) ;
 int setlocale (int ,char*) ;
 int setutxent () ;
 int stderr ;
 int stdin ;
 int stdout ;
 int strlen (int ) ;
 int strncmp (char*,int ,int ) ;
 scalar_t__ term_chk (int,char*,int*,int *,int) ;
 char* ttyname (int) ;
 int usage () ;
 int utmp_chk (char*,char*) ;

int
main(int argc, char **argv)
{
 unsigned long cmds[] = { TIOCGETA, TIOCGWINSZ, FIODGNAME };
 cap_rights_t rights;
 struct passwd *pwd;
 time_t atime;
 uid_t myuid;
 int msgsok, myttyfd;
 char tty[MAXPATHLEN], *mytty;
 const char *login;
 int devfd;

 (void)setlocale(LC_CTYPE, "");

 devfd = open(_PATH_DEV, O_RDONLY);
 if (devfd < 0)
  err(1, "open(/dev)");
 cap_rights_init(&rights, CAP_FCNTL, CAP_FSTAT, CAP_IOCTL, CAP_LOOKUP,
     CAP_PWRITE);
 if (caph_rights_limit(devfd, &rights) < 0)
  err(1, "can't limit devfd rights");





 cap_rights_init(&rights, CAP_FCNTL, CAP_FSTAT, CAP_IOCTL, CAP_READ,
     CAP_WRITE);
 if (caph_rights_limit(STDIN_FILENO, &rights) < 0 ||
     caph_rights_limit(STDOUT_FILENO, &rights) < 0 ||
     caph_rights_limit(STDERR_FILENO, &rights) < 0 ||
     caph_ioctls_limit(STDIN_FILENO, cmds, nitems(cmds)) < 0 ||
     caph_ioctls_limit(STDOUT_FILENO, cmds, nitems(cmds)) < 0 ||
     caph_ioctls_limit(STDERR_FILENO, cmds, nitems(cmds)) < 0 ||
     caph_fcntls_limit(STDIN_FILENO, CAP_FCNTL_GETFL) < 0 ||
     caph_fcntls_limit(STDOUT_FILENO, CAP_FCNTL_GETFL) < 0 ||
     caph_fcntls_limit(STDERR_FILENO, CAP_FCNTL_GETFL) < 0)
  err(1, "can't limit stdio rights");

 caph_cache_catpages();
 caph_cache_tzdata();




 setutxent();





 myuid = getuid();
 if ((login = getlogin()) == ((void*)0)) {
  if ((pwd = getpwuid(myuid)))
   login = pwd->pw_name;
  else
   login = "???";
 }

 if (caph_enter() < 0)
  err(1, "cap_enter");

 while (getopt(argc, argv, "") != -1)
  usage();
 argc -= optind;
 argv += optind;


 if (isatty(fileno(stdin)))
  myttyfd = fileno(stdin);
 else if (isatty(fileno(stdout)))
  myttyfd = fileno(stdout);
 else if (isatty(fileno(stderr)))
  myttyfd = fileno(stderr);
 else
  errx(1, "can't find your tty");
 if (!(mytty = ttyname(myttyfd)))
  errx(1, "can't find your tty's name");
 if (!strncmp(mytty, _PATH_DEV, strlen(_PATH_DEV)))
  mytty += strlen(_PATH_DEV);
 if (term_chk(devfd, mytty, &msgsok, &atime, 1))
  exit(1);
 if (!msgsok)
  errx(1, "you have write permission turned off");


 switch (argc) {
 case 1:
  search_utmp(devfd, argv[0], tty, mytty, myuid);
  do_write(devfd, tty, mytty, login);
  break;
 case 2:
  if (!strncmp(argv[1], _PATH_DEV, strlen(_PATH_DEV)))
   argv[1] += strlen(_PATH_DEV);
  if (utmp_chk(argv[0], argv[1]))
   errx(1, "%s is not logged in on %s", argv[0], argv[1]);
  if (term_chk(devfd, argv[1], &msgsok, &atime, 1))
   exit(1);
  if (myuid && !msgsok)
   errx(1, "%s has messages disabled on %s", argv[0], argv[1]);
  do_write(devfd, argv[1], mytty, login);
  break;
 default:
  usage();
 }
 done(0);
 return (0);
}
