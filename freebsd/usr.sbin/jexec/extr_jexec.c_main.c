
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {char const* pw_name; char const* pw_dir; char const* pw_shell; int pw_uid; int pw_gid; } ;
typedef int login_cap_t ;


 int LOGIN_SETALL ;
 int LOGIN_SETENV ;
 int LOGIN_SETGROUP ;
 int LOGIN_SETLOGIN ;
 int LOGIN_SETPATH ;
 char const* _PATH_BSHELL ;
 scalar_t__ chdir (char*) ;
 int endpwent () ;
 char** environ ;
 int err (int,char*,...) ;
 int errx (int,char*,int ) ;
 scalar_t__ execlp (char const*,char const*,char*,int *) ;
 scalar_t__ execvp (char*,char**) ;
 int exit (int ) ;
 int get_user_info (char const*,struct passwd const**,int **) ;
 char* getenv (char*) ;
 int getopt (int,char**,char*) ;
 int jail_attach (int) ;
 int jail_errmsg ;
 int jail_getid (char*) ;
 int login_close (int *) ;
 char* optarg ;
 scalar_t__ optind ;
 int setenv (char*,char const*,int) ;
 scalar_t__ setgid (int ) ;
 scalar_t__ setusercontext (int *,struct passwd const*,int ,int) ;
 int usage () ;

int
main(int argc, char *argv[])
{
 int jid;
 login_cap_t *lcap = ((void*)0);
 int ch, clean, uflag, Uflag;
 char *cleanenv;
 const struct passwd *pwd = ((void*)0);
 const char *username, *shell, *term;

 ch = clean = uflag = Uflag = 0;
 username = ((void*)0);

 while ((ch = getopt(argc, argv, "lnu:U:")) != -1) {
  switch (ch) {
  case 'l':
   clean = 1;
   break;
  case 'n':

   break;
  case 'u':
   username = optarg;
   uflag = 1;
   break;
  case 'U':
   username = optarg;
   Uflag = 1;
   break;
  default:
   usage();
  }
 }
 argc -= optind;
 argv += optind;
 if (argc < 1)
  usage();
 if (uflag && Uflag)
  usage();
 if (uflag || (clean && !Uflag))

  get_user_info(username, &pwd, &lcap);


 jid = jail_getid(argv[0]);
 if (jid < 0)
  errx(1, "%s", jail_errmsg);
 if (jail_attach(jid) == -1)
  err(1, "jail_attach(%d)", jid);
 if (chdir("/") == -1)
  err(1, "chdir(): /");


 if (clean || username != ((void*)0)) {
  if (Uflag)

   get_user_info(username, &pwd, &lcap);
  if (clean) {
   term = getenv("TERM");
   cleanenv = ((void*)0);
   environ = &cleanenv;
   setenv("PATH", "/bin:/usr/bin", 1);
   if (term != ((void*)0))
    setenv("TERM", term, 1);
  }
  if (setgid(pwd->pw_gid) != 0)
   err(1, "setgid");
  if (setusercontext(lcap, pwd, pwd->pw_uid, username
      ? LOGIN_SETALL & ~LOGIN_SETGROUP & ~LOGIN_SETLOGIN
      : LOGIN_SETPATH | LOGIN_SETENV) != 0)
   err(1, "setusercontext");
  login_close(lcap);
  setenv("USER", pwd->pw_name, 1);
  setenv("HOME", pwd->pw_dir, 1);
  setenv("SHELL",
      *pwd->pw_shell ? pwd->pw_shell : _PATH_BSHELL, 1);
  if (clean && chdir(pwd->pw_dir) < 0)
   err(1, "chdir: %s", pwd->pw_dir);
  endpwent();
 }


 if (argc > 1) {
  if (execvp(argv[1], argv + 1) < 0)
   err(1, "execvp: %s", argv[1]);
 } else {
  if (!(shell = getenv("SHELL")))
   shell = _PATH_BSHELL;
  if (execlp(shell, shell, "-i", ((void*)0)) < 0)
   err(1, "execlp: %s", shell);
 }
 exit(0);
}
