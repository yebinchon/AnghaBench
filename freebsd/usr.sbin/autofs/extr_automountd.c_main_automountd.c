
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pidfh {int dummy; } ;
struct autofs_daemon_request {int dummy; } ;
typedef int request ;
typedef scalar_t__ pid_t ;
typedef int intmax_t ;


 int AUTOFSREQUEST ;
 int AUTOFS_PATH ;
 char* AUTOMOUNTD_PIDFILE ;
 int EEXIST ;
 int EINTR ;
 int ENOENT ;
 int O_CLOEXEC ;
 int O_RDWR ;
 int assert (int) ;
 int atoi (int ) ;
 scalar_t__ autofs_fd ;
 char* concat (char*,char,int ) ;
 int daemon (int ,int ) ;
 int defined_init () ;
 int defined_parse_and_add (int ) ;
 int errno ;
 int exit (int) ;
 scalar_t__ fork () ;
 int getopt (int,char**,char*) ;
 int handle_request (struct autofs_daemon_request*,char*,int) ;
 int ioctl (scalar_t__,int ,struct autofs_daemon_request*) ;
 int kldload (char*) ;
 int lesser_daemon () ;
 int log_debugx (char*,...) ;
 int log_err (int,char*,...) ;
 int log_errx (int,char*,int ) ;
 int log_init (int) ;
 int log_warn (char*) ;
 int memset (struct autofs_daemon_request*,int ,int) ;
 int nchildren ;
 scalar_t__ open (int ,int) ;
 int optarg ;
 scalar_t__ optind ;
 int pidfile_close (struct pidfh*) ;
 struct pidfh* pidfile_open (char const*,int,scalar_t__*) ;
 int pidfile_remove (struct pidfh*) ;
 int pidfile_write (struct pidfh*) ;
 int register_sigchld () ;
 int usage_automountd () ;
 scalar_t__ wait_for_children (int) ;

int
main_automountd(int argc, char **argv)
{
 struct pidfh *pidfh;
 pid_t pid, otherpid;
 const char *pidfile_path = AUTOMOUNTD_PIDFILE;
 char *options = ((void*)0);
 struct autofs_daemon_request request;
 int ch, debug = 0, error, maxproc = 30, retval, saved_errno;
 bool dont_daemonize = 0, incomplete_hierarchy = 0;

 defined_init();

 while ((ch = getopt(argc, argv, "D:Tdim:o:v")) != -1) {
  switch (ch) {
  case 'D':
   defined_parse_and_add(optarg);
   break;
  case 'T':




   debug++;
   break;
  case 'd':
   dont_daemonize = 1;
   debug++;
   break;
  case 'i':
   incomplete_hierarchy = 1;
   break;
  case 'm':
   maxproc = atoi(optarg);
   break;
  case 'o':
   options = concat(options, ',', optarg);
   break;
  case 'v':
   debug++;
   break;
  case '?':
  default:
   usage_automountd();
  }
 }
 argc -= optind;
 if (argc != 0)
  usage_automountd();

 log_init(debug);

 pidfh = pidfile_open(pidfile_path, 0600, &otherpid);
 if (pidfh == ((void*)0)) {
  if (errno == EEXIST) {
   log_errx(1, "daemon already running, pid: %jd.",
       (intmax_t)otherpid);
  }
  log_err(1, "cannot open or create pidfile \"%s\"",
      pidfile_path);
 }

 autofs_fd = open(AUTOFS_PATH, O_RDWR | O_CLOEXEC);
 if (autofs_fd < 0 && errno == ENOENT) {
  saved_errno = errno;
  retval = kldload("autofs");
  if (retval != -1)
   autofs_fd = open(AUTOFS_PATH, O_RDWR | O_CLOEXEC);
  else
   errno = saved_errno;
 }
 if (autofs_fd < 0)
  log_err(1, "failed to open %s", AUTOFS_PATH);

 if (dont_daemonize == 0) {
  if (daemon(0, 0) == -1) {
   log_warn("cannot daemonize");
   pidfile_remove(pidfh);
   exit(1);
  }
 } else {
  lesser_daemon();
 }

 pidfile_write(pidfh);

 register_sigchld();

 for (;;) {
  log_debugx("waiting for request from the kernel");

  memset(&request, 0, sizeof(request));
  error = ioctl(autofs_fd, AUTOFSREQUEST, &request);
  if (error != 0) {
   if (errno == EINTR) {
    nchildren -= wait_for_children(0);
    assert(nchildren >= 0);
    continue;
   }

   log_err(1, "AUTOFSREQUEST");
  }

  if (dont_daemonize) {
   log_debugx("not forking due to -d flag; "
       "will exit after servicing a single request");
  } else {
   nchildren -= wait_for_children(0);
   assert(nchildren >= 0);

   while (maxproc > 0 && nchildren >= maxproc) {
    log_debugx("maxproc limit of %d child processes hit; "
        "waiting for child process to exit", maxproc);
    nchildren -= wait_for_children(1);
    assert(nchildren >= 0);
   }
   log_debugx("got request; forking child process #%d",
       nchildren);
   nchildren++;

   pid = fork();
   if (pid < 0)
    log_err(1, "fork");
   if (pid > 0)
    continue;
  }

  pidfile_close(pidfh);
  handle_request(&request, options, incomplete_hierarchy);
 }

 pidfile_close(pidfh);

 return (0);
}
