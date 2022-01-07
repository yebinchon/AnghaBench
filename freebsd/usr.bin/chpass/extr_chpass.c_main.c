
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
struct ypclnt {int error; } ;
struct passwd {scalar_t__ pw_uid; int pw_fields; char* pw_passwd; int pw_name; } ;
typedef int ENTRY ;




 int _PWF_SOURCE ;
 int _PWSCAN_MASTER ;
 int _PWSCAN_WARN ;
 int __pw_scan (char*,struct passwd*,int) ;
 int baduser () ;
 char* crypt (char const*,char*) ;
 struct passwd* edit (int ,struct passwd*) ;
 int err (int,char*) ;
 int errx (int,char*,...) ;
 int exit (int) ;
 int free (struct passwd*) ;
 int getopt (int,char**,char*) ;
 char* getpass (char*) ;
 struct passwd* getpwnam (char*) ;
 struct passwd* getpwuid (scalar_t__) ;
 scalar_t__ getuid () ;
 int master_mode ;
 void* optarg ;
 scalar_t__ optind ;
 int p_expire (char*,struct passwd*,int *) ;
 int p_shell (char*,struct passwd*,int *) ;
 int pw_copy (int,int,struct passwd*,struct passwd*) ;
 struct passwd* pw_dup (struct passwd*) ;
 scalar_t__ pw_equal (struct passwd*,struct passwd*) ;
 int pw_fini () ;
 scalar_t__ pw_init (int *,int *) ;
 int pw_lock () ;
 int pw_mkdb (int ) ;
 int pw_tempname () ;
 int pw_tmp (int) ;
 scalar_t__ strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 int usage () ;
 int warnx (char*,...) ;
 int ypclnt_connect (struct ypclnt*) ;
 int ypclnt_free (struct ypclnt*) ;
 int ypclnt_havepasswdd (struct ypclnt*) ;
 struct ypclnt* ypclnt_new (char const*,char*,char const*) ;
 int ypclnt_passwd (struct ypclnt*,struct passwd*,char const*) ;

int
main(int argc, char *argv[])
{
 enum { NEWSH, LOADENTRY, EDITENTRY, NEWPW, NEWEXP } op;
 struct passwd lpw, *old_pw, *pw;
 int ch, pfd, tfd;
 const char *password;
 char *arg = ((void*)0), *cryptpw;
 uid_t uid;





 pw = old_pw = ((void*)0);
 op = EDITENTRY;



 while ((ch = getopt(argc, argv, "a:p:s:e:")) != -1)

  switch (ch) {
  case 'a':
   op = LOADENTRY;
   arg = optarg;
   break;
  case 's':
   op = NEWSH;
   arg = optarg;
   break;
  case 'p':
   op = NEWPW;
   arg = optarg;
   break;
  case 'e':
   op = NEWEXP;
   arg = optarg;
   break;
  case '?':
  default:
   usage();
  }

 argc -= optind;
 argv += optind;

 if (argc > 1)
  usage();

 uid = getuid();

 if (op == EDITENTRY || op == NEWSH || op == NEWPW || op == NEWEXP) {
  if (argc == 0) {
   if ((pw = getpwuid(uid)) == ((void*)0))
    errx(1, "unknown user: uid %lu",
        (unsigned long)uid);
  } else {
   if ((pw = getpwnam(*argv)) == ((void*)0))
    errx(1, "unknown user: %s", *argv);
   if (uid != 0 && uid != pw->pw_uid)
    baduser();
  }


  if ((pw = pw_dup(pw)) == ((void*)0) ||
      (old_pw = pw_dup(pw)) == ((void*)0))
   err(1, "pw_dup");
 }
 master_mode = (uid == 0);

 if (op == NEWSH) {

  if (!arg[0])
   usage();
  if (p_shell(arg, pw, (ENTRY *)((void*)0)) == -1)
   exit(1);
 }

 if (op == NEWEXP) {
  if (uid)
   baduser();
  if (p_expire(arg, pw, (ENTRY *)((void*)0)) == -1)
   exit(1);
 }

 if (op == LOADENTRY) {
  if (uid)
   baduser();
  pw = &lpw;
  old_pw = ((void*)0);
  if (!__pw_scan(arg, pw, _PWSCAN_WARN|_PWSCAN_MASTER))
   exit(1);
 }

 if (op == NEWPW) {
  if (uid)
   baduser();

  if (strchr(arg, ':'))
   errx(1, "invalid format for password");
  pw->pw_passwd = arg;
 }

 if (op == EDITENTRY) {




  if (pw_init(((void*)0), ((void*)0)))
   err(1, "pw_init()");
  if ((tfd = pw_tmp(-1)) == -1) {
   pw_fini();
   err(1, "pw_tmp()");
  }
  free(pw);
  pw = edit(pw_tempname(), old_pw);
  pw_fini();
  if (pw == ((void*)0))
   err(1, "edit()");




  if (pw_equal(old_pw, pw) &&
      strcmp(old_pw->pw_passwd, pw->pw_passwd) == 0)
   errx(0, "user information unchanged");
 }

 if (old_pw && !master_mode) {
  password = getpass("Password: ");
  cryptpw = crypt(password, old_pw->pw_passwd);
  if (cryptpw == ((void*)0) || strcmp(cryptpw, old_pw->pw_passwd) != 0)
   baduser();
 } else {
  password = "";
 }

 if (old_pw != ((void*)0))
  pw->pw_fields |= (old_pw->pw_fields & _PWF_SOURCE);
 switch (pw->pw_fields & _PWF_SOURCE) {
 case 0:
 case 129:
  if (pw_init(((void*)0), ((void*)0)))
   err(1, "pw_init()");
  if ((pfd = pw_lock()) == -1) {
   pw_fini();
   err(1, "pw_lock()");
  }
  if ((tfd = pw_tmp(-1)) == -1) {
   pw_fini();
   err(1, "pw_tmp()");
  }
  if (pw_copy(pfd, tfd, pw, old_pw) == -1) {
   pw_fini();
   err(1, "pw_copy");
  }
  if (pw_mkdb(pw->pw_name) == -1) {
   pw_fini();
   err(1, "pw_mkdb()");
  }
  pw_fini();
  errx(0, "user information updated");
  break;
 default:
  errx(1, "unsupported passwd source");
 }
}
