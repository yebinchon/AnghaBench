
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_uid; int st_mode; } ;
typedef int mode_t ;


 int ALL_POINTS ;
 scalar_t__ CLEAR ;
 scalar_t__ CLEARALL ;
 int DEFFILEMODE ;
 int DEF_POINTS ;
 scalar_t__ ENOENT ;
 int KTRFAC_INHERIT ;
 int KTRFLAG_DESCEND ;
 int KTROP_CLEAR ;
 int KTROP_CLEARFILE ;
 scalar_t__ NOTSET ;
 int O_CREAT ;
 int O_EXCL ;
 int O_NONBLOCK ;
 int O_WRONLY ;
 int PROC_ABI_POINTS ;
 int SIGSYS ;
 int S_IRWXG ;
 int S_IRWXO ;
 int S_ISREG (int ) ;
 scalar_t__ clear ;
 int close (int) ;
 char* def_tracefile ;
 int err (int,char*,char const*) ;
 scalar_t__ errno ;
 int errx (int,char*,char const*) ;
 int execvp (char*,char**) ;
 int exit (int ) ;
 scalar_t__ fstat (int,struct stat*) ;
 int getopt (int,char**,char*) ;
 scalar_t__ getpid () ;
 int getpoints (char*) ;
 scalar_t__ getuid () ;
 scalar_t__ ktrace (char const*,int,int,scalar_t__) ;
 int no_ktrace ;
 int open (char const*,int,int ) ;
 char* optarg ;
 scalar_t__ optind ;
 scalar_t__ pid ;
 int set_pid_clear (char*,scalar_t__) ;
 int signal (int ,int ) ;
 int umask (int) ;
 int unlink (char const*) ;
 int usage () ;
 int warnx (char*,char*) ;

int
main(int argc, char *argv[])
{
 int append, ch, fd, inherit, ops, trpoints;
 const char *tracefile;
 mode_t omask;
 struct stat sb;

 append = ops = inherit = 0;
 trpoints = DEF_POINTS;
 tracefile = def_tracefile;
 while ((ch = getopt(argc,argv,"aCcdf:g:ip:t:")) != -1)
  switch((char)ch) {
  case 'a':
   append = 1;
   break;
  case 'C':
   set_pid_clear("1", CLEARALL);
   break;
  case 'c':
   set_pid_clear(((void*)0), CLEAR);
   break;
  case 'd':
   ops |= KTRFLAG_DESCEND;
   break;
  case 'f':
   tracefile = optarg;
   break;
  case 'g':
   set_pid_clear(optarg, NOTSET);
   pid = -pid;
   break;
  case 'i':
   inherit = 1;
   break;
  case 'p':
   set_pid_clear(optarg, NOTSET);
   break;
  case 't':
   trpoints = getpoints(optarg);
   if (trpoints < 0) {
    warnx("unknown facility in %s", optarg);
    usage();
   }
   break;
  default:
   usage();
  }

 argv += optind;
 argc -= optind;


 if (clear == NOTSET && pid == 0 && argc == 0)
  usage();


 if (pid != 0 && argc > 0) {
  usage();
 }

 if (inherit)
  trpoints |= KTRFAC_INHERIT;

 (void)signal(SIGSYS, no_ktrace);
 if (clear != NOTSET) {
  if (clear == CLEARALL) {
   ops = KTROP_CLEAR | KTRFLAG_DESCEND;
   trpoints = ALL_POINTS;
  } else {
   ops |= pid ? KTROP_CLEAR : KTROP_CLEARFILE;
  }
  if (ktrace(tracefile, ops, trpoints, pid) < 0)
   err(1, "%s", tracefile);
  exit(0);
 }

 omask = umask(S_IRWXG|S_IRWXO);
 if (append) {
  if ((fd = open(tracefile, O_CREAT | O_WRONLY | O_NONBLOCK,
      DEFFILEMODE)) < 0)
   err(1, "%s", tracefile);
  if (fstat(fd, &sb) != 0 || sb.st_uid != getuid())
   errx(1, "refuse to append to %s not owned by you",
       tracefile);
  if (!(S_ISREG(sb.st_mode)))
   errx(1, "%s not regular file", tracefile);
 } else {
  if (unlink(tracefile) == -1 && errno != ENOENT)
   err(1, "unlink %s", tracefile);
  if ((fd = open(tracefile, O_CREAT | O_EXCL | O_WRONLY,
      DEFFILEMODE)) < 0)
   err(1, "%s", tracefile);
 }
 (void)umask(omask);
 (void)close(fd);

 trpoints |= PROC_ABI_POINTS;

 if (argc > 0) {
  if (ktrace(tracefile, ops, trpoints, getpid()) < 0)
   err(1, "%s", tracefile);
  execvp(*argv, argv);
  err(1, "exec of '%s' failed", *argv);
 }
 if (ktrace(tracefile, ops, trpoints, pid) < 0)
  err(1, "%s", tracefile);
 exit(0);
}
