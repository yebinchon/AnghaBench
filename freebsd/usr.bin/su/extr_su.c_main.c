
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uid_t ;
typedef int u_int ;
struct sigaction {void* sa_handler; int sa_mask; int sa_flags; } ;
struct passwd {scalar_t__ pw_uid; char const* pw_name; char* pw_shell; char const* pw_dir; } ;
struct pam_conv {int * member_1; int member_0; } ;
typedef int shellbuf ;
typedef int pid_t ;
struct TYPE_6__ {char* lc_class; } ;
typedef TYPE_1__ login_cap_t ;
typedef enum tristate { ____Placeholder_tristate } tristate ;
typedef int au_id_t ;


 int AUE_su ;
 scalar_t__ ENOSYS ;
 int EPERM ;
 int LOGIN_SETALL ;
 int LOGIN_SETENV ;
 int LOGIN_SETGROUP ;
 int LOGIN_SETLOGIN ;
 int LOGIN_SETMAC ;
 int LOGIN_SETPATH ;
 int LOGIN_SETPRIORITY ;
 int LOGIN_SETRESOURCES ;
 int LOGIN_SETUMASK ;
 int LOG_AUTH ;
 int LOG_CONS ;
 int LOG_ERR ;
 int LOG_NOTICE ;
 int LOG_WARNING ;
 int MAXLOGNAME ;
 int MAXPATHLEN ;
 int NO ;
 int PAM_CHANGE_EXPIRED_AUTHTOK ;
 int PAM_END () ;
 int PAM_ESTABLISH_CRED ;
 int PAM_NEW_AUTHTOK_REQD ;
 int PAM_RUSER ;
 int PAM_SET_ITEM (int ,char const*) ;
 int PAM_SUCCESS ;
 int PAM_TTY ;
 int PAM_USER ;
 int PRIO_PROCESS ;
 int SA_RESTART ;
 int SIGCONT ;
 int SIGINT ;
 int SIGPIPE ;
 int SIGQUIT ;
 int SIGSTOP ;
 int SIGTSTP ;
 int SIGTTOU ;
 void* SIG_DFL ;
 void* SIG_IGN ;
 int STDERR_FILENO ;
 int UNSET ;
 int WEXITSTATUS (int) ;
 int WIFSTOPPED (int) ;
 int WUNTRACED ;
 int YES ;
 char* _PATH_BSHELL ;
 scalar_t__ audit_submit (int ,int ,int ,int,char*,...) ;
 int chdir (char const*) ;
 int chshell (char*) ;
 int close (int) ;
 char** environ ;
 int environ_pam ;
 int err (int,char*,...) ;
 scalar_t__ errno ;
 int errx (int,char*,...) ;
 int execv (char const*,char* const*) ;
 int exit (int ) ;
 int export_pam_environment () ;
 int fork () ;
 scalar_t__ getauid (int *) ;
 char* getenv (char*) ;
 scalar_t__ geteuid () ;
 char* getlogin () ;
 int getopt (int,char**,char*) ;
 int getpgid (int) ;
 int getpgrp () ;
 int getpid () ;
 int getpriority (int ,int ) ;
 struct passwd* getpwnam (char const*) ;
 struct passwd* getpwuid (scalar_t__) ;
 scalar_t__ getuid () ;
 int kill (int,int ) ;
 int login_close (TYPE_1__*) ;
 TYPE_1__* login_getclass (char*) ;
 TYPE_1__* login_getpwclass (struct passwd*) ;
 char** malloc (int) ;
 char const* ontty () ;
 int openlog (char*,int ,int) ;
 int openpam_ttyconv ;
 char* optarg ;
 int optind ;
 int pam_acct_mgmt (int ,int ) ;
 int pam_authenticate (int ,int ) ;
 int pam_chauthtok (int ,int ) ;
 int pam_get_item (int ,int ,void const**) ;
 char* pam_getenv (int ,char*) ;
 int pam_getenvlist (int ) ;
 int pam_open_session (int ,int ) ;
 int pam_setcred (int ,int ) ;
 int pam_start (char*,char const*,struct pam_conv*,int *) ;
 char* pam_strerror (int ,int) ;
 int pamh ;
 int pipe (int*) ;
 int read (int,int*,int) ;
 int setenv (char*,char const*,int) ;
 int setpgid (int,int) ;
 int setpriority (int ,int ,int) ;
 scalar_t__ setusercontext (TYPE_1__*,struct passwd*,scalar_t__,int) ;
 int sigaction (int ,struct sigaction*,struct sigaction*) ;
 int sigemptyset (int *) ;
 scalar_t__ strcmp (char const*,char*) ;
 char* strdup (char const*) ;
 int strerror (scalar_t__) ;
 int strlcpy (char*,char*,int) ;
 int strlen (char const*) ;
 char* strrchr (char const*,char) ;
 int syslog (int,char*,char*,...) ;
 int tcgetpgrp (int ) ;
 int tcsetpgrp (int ,int) ;
 char* ttyname (int ) ;
 int usage () ;
 int waitpid (int,int*,int ) ;

int
main(int argc, char *argv[])
{
 static char *cleanenv;
 struct passwd *pwd = ((void*)0);
 struct pam_conv conv = { openpam_ttyconv, ((void*)0) };
 enum tristate iscsh;
 login_cap_t *lc;
 union {
  const char **a;
  char * const *b;
 } np;
 uid_t ruid;
 pid_t child_pid, child_pgrp, pid;
 int asme, ch, asthem, fastlogin, prio, i, retcode,
   statusp, setmaclabel;
 u_int setwhat;
 char *username, *class, shellbuf[MAXPATHLEN];
 const char *p, *user, *shell, *mytty, **nargv;
 const void *v;
 struct sigaction sa, sa_int, sa_quit, sa_pipe;
 int temp, fds[2];





 p = shell = class = cleanenv = ((void*)0);
 asme = asthem = fastlogin = statusp = 0;
 user = "root";
 iscsh = UNSET;
 setmaclabel = 0;

 while ((ch = getopt(argc, argv, "-flmsc:")) != -1)
  switch ((char)ch) {
  case 'f':
   fastlogin = 1;
   break;
  case '-':
  case 'l':
   asme = 0;
   asthem = 1;
   break;
  case 'm':
   asme = 1;
   asthem = 0;
   break;
  case 's':
   setmaclabel = 1;
   break;
  case 'c':
   class = optarg;
   break;
  case '?':
  default:
   usage();

  }

 if (optind < argc)
  user = argv[optind++];

 if (user == ((void*)0))
  usage();






 if (geteuid() != 0)
  errx(1, "not running setuid");







 if (strlen(user) > MAXLOGNAME - 1) {





  errx(1, "username too long");
 }

 nargv = malloc(sizeof(char *) * (size_t)(argc + 4));
 if (nargv == ((void*)0))
  errx(1, "malloc failure");

 nargv[argc + 3] = ((void*)0);
 for (i = argc; i >= optind; i--)
  nargv[i + 3] = argv[i];
 np.a = &nargv[i + 3];

 argv += optind;

 errno = 0;
 prio = getpriority(PRIO_PROCESS, 0);
 if (errno)
  prio = 0;

 setpriority(PRIO_PROCESS, 0, -2);
 openlog("su", LOG_CONS, LOG_AUTH);


 ruid = getuid();
 username = getlogin();
 if (username != ((void*)0))
  pwd = getpwnam(username);
 if (pwd == ((void*)0) || pwd->pw_uid != ruid)
  pwd = getpwuid(ruid);
 if (pwd == ((void*)0)) {





  errx(1, "who are you?");
 }

 username = strdup(pwd->pw_name);
 if (username == ((void*)0))
  err(1, "strdup failure");

 if (asme) {
  if (pwd->pw_shell != ((void*)0) && *pwd->pw_shell != '\0') {

   strlcpy(shellbuf, pwd->pw_shell,
       sizeof(shellbuf));
   shell = shellbuf;
  }
  else {
   shell = _PATH_BSHELL;
   iscsh = NO;
  }
 }


 retcode = pam_start("su", user, &conv, &pamh);
 if (retcode != PAM_SUCCESS) {
  syslog(LOG_ERR, "pam_start: %s", pam_strerror(pamh, retcode));
  errx(1, "pam_start: %s", pam_strerror(pamh, retcode));
 }

 PAM_SET_ITEM(PAM_RUSER, username);

 mytty = ttyname(STDERR_FILENO);
 if (!mytty)
  mytty = "tty";
 PAM_SET_ITEM(PAM_TTY, mytty);

 retcode = pam_authenticate(pamh, 0);
 if (retcode != PAM_SUCCESS) {





  syslog(LOG_AUTH|LOG_WARNING, "BAD SU %s to %s on %s",
      username, user, mytty);
  errx(1, "Sorry");
 }




 retcode = pam_get_item(pamh, PAM_USER, &v);
 if (retcode == PAM_SUCCESS)
  user = v;
 else
  syslog(LOG_ERR, "pam_get_item(PAM_USER): %s",
      pam_strerror(pamh, retcode));
 pwd = getpwnam(user);
 if (pwd == ((void*)0)) {





  errx(1, "unknown login: %s", user);
 }

 retcode = pam_acct_mgmt(pamh, 0);
 if (retcode == PAM_NEW_AUTHTOK_REQD) {
  retcode = pam_chauthtok(pamh,
   PAM_CHANGE_EXPIRED_AUTHTOK);
  if (retcode != PAM_SUCCESS) {
   syslog(LOG_ERR, "pam_chauthtok: %s",
       pam_strerror(pamh, retcode));
   errx(1, "Sorry");
  }
 }
 if (retcode != PAM_SUCCESS) {





  syslog(LOG_ERR, "pam_acct_mgmt: %s",
   pam_strerror(pamh, retcode));
  errx(1, "Sorry");
 }


 if (class == ((void*)0))
  lc = login_getpwclass(pwd);
 else {
  if (ruid != 0) {





   errx(1, "only root may use -c");
  }
  lc = login_getclass(class);
  if (lc == ((void*)0))
   err(1, "login_getclass");
  if (lc->lc_class == ((void*)0) || strcmp(class, lc->lc_class) != 0)
   errx(1, "unknown class: %s", class);
 }


 if (asme) {
  if (ruid != 0 && !chshell(pwd->pw_shell))
   errx(1, "permission denied (shell)");
 }
 else if (pwd->pw_shell && *pwd->pw_shell) {
  shell = pwd->pw_shell;
  iscsh = UNSET;
 }
 else {
  shell = _PATH_BSHELL;
  iscsh = NO;
 }


 if (iscsh == UNSET) {
  p = strrchr(shell, '/');
  if (p)
   ++p;
  else
   p = shell;
  iscsh = strcmp(p, "csh") ? (strcmp(p, "tcsh") ? NO : YES) : YES;
 }
 setpriority(PRIO_PROCESS, 0, prio);





 if (setusercontext(lc, pwd, pwd->pw_uid, LOGIN_SETGROUP) < 0)
  err(1, "setusercontext");

 retcode = pam_setcred(pamh, PAM_ESTABLISH_CRED);
 if (retcode != PAM_SUCCESS) {
  syslog(LOG_ERR, "pam_setcred: %s",
      pam_strerror(pamh, retcode));
  errx(1, "failed to establish credentials.");
 }
 if (asthem) {
  retcode = pam_open_session(pamh, 0);
  if (retcode != PAM_SUCCESS) {
   syslog(LOG_ERR, "pam_open_session: %s",
       pam_strerror(pamh, retcode));
   errx(1, "failed to open session.");
  }
 }





 sa.sa_flags = SA_RESTART;
 sa.sa_handler = SIG_IGN;
 sigemptyset(&sa.sa_mask);
 sigaction(SIGINT, &sa, &sa_int);
 sigaction(SIGQUIT, &sa, &sa_quit);
 sigaction(SIGPIPE, &sa, &sa_pipe);
 sa.sa_handler = SIG_DFL;
 sigaction(SIGTSTP, &sa, ((void*)0));
 statusp = 1;
 if (pipe(fds) == -1) {
  PAM_END();
  err(1, "pipe");
 }
 child_pid = fork();
 switch (child_pid) {
 default:
  sa.sa_handler = SIG_IGN;
  sigaction(SIGTTOU, &sa, ((void*)0));
  close(fds[0]);
  setpgid(child_pid, child_pid);
  if (tcgetpgrp(STDERR_FILENO) == getpgrp())
   tcsetpgrp(STDERR_FILENO, child_pid);
  close(fds[1]);
  sigaction(SIGPIPE, &sa_pipe, ((void*)0));
  while ((pid = waitpid(child_pid, &statusp, WUNTRACED)) != -1) {
   if (WIFSTOPPED(statusp)) {
    child_pgrp = getpgid(child_pid);
    if (tcgetpgrp(STDERR_FILENO) == child_pgrp)
     tcsetpgrp(STDERR_FILENO, getpgrp());
    kill(getpid(), SIGSTOP);
    if (tcgetpgrp(STDERR_FILENO) == getpgrp()) {
     child_pgrp = getpgid(child_pid);
     tcsetpgrp(STDERR_FILENO, child_pgrp);
    }
    kill(child_pid, SIGCONT);
    statusp = 1;
    continue;
   }
   break;
  }
  tcsetpgrp(STDERR_FILENO, getpgrp());
  if (pid == -1)
   err(1, "waitpid");
  PAM_END();
  exit(WEXITSTATUS(statusp));
 case -1:
  PAM_END();
  err(1, "fork");
 case 0:
  close(fds[1]);
  read(fds[0], &temp, 1);
  close(fds[0]);
  sigaction(SIGPIPE, &sa_pipe, ((void*)0));
  sigaction(SIGINT, &sa_int, ((void*)0));
  sigaction(SIGQUIT, &sa_quit, ((void*)0));





  setwhat = LOGIN_SETALL & ~(LOGIN_SETENV | LOGIN_SETUMASK |
      LOGIN_SETLOGIN | LOGIN_SETPATH | LOGIN_SETGROUP |
      LOGIN_SETMAC);



  if (setmaclabel)
   setwhat |= LOGIN_SETMAC;




  if ((asme || (!asthem && class == ((void*)0))) && pwd->pw_uid)
   setwhat &= ~(LOGIN_SETPRIORITY | LOGIN_SETRESOURCES);
  if (setusercontext(lc, pwd, pwd->pw_uid, setwhat) < 0)
   err(1, "setusercontext");

  if (!asme) {
   if (asthem) {
    p = getenv("TERM");
    environ = &cleanenv;
   }

   if (asthem || pwd->pw_uid)
    setenv("USER", pwd->pw_name, 1);
   setenv("HOME", pwd->pw_dir, 1);
   setenv("SHELL", shell, 1);

   if (asthem) {




    environ_pam = pam_getenvlist(pamh);
    if (environ_pam)
     export_pam_environment();


    setusercontext(lc, pwd, pwd->pw_uid,
     LOGIN_SETPATH | LOGIN_SETUMASK |
     LOGIN_SETENV);
    if (p)
     setenv("TERM", p, 1);

    p = pam_getenv(pamh, "HOME");
    if (chdir(p ? p : pwd->pw_dir) < 0)
     errx(1, "no directory");
   }
  }
  login_close(lc);

  if (iscsh == YES) {
   if (fastlogin)
    *np.a-- = "-f";
   if (asme)
    *np.a-- = "-m";
  }

  *np.a = asthem ? "-su" : iscsh == YES ? "_su" : "su";

  if (ruid != 0)
   syslog(LOG_NOTICE, "%s to %s%s", username, user,
       ontty());

  execv(shell, np.b);
  err(1, "%s", shell);
 }
}
