
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uintmax_t ;
struct userconf {char* nispasswd; } ;
struct stat {int dummy; } ;
struct passwd {int pw_fields; scalar_t__ pw_uid; char* pw_name; int pw_gid; int pw_dir; } ;
struct group {char** gr_mem; int gr_name; } ;
typedef scalar_t__ intmax_t ;
typedef int home ;
typedef int file ;
struct TYPE_4__ {scalar_t__ _altdir; } ;
struct TYPE_3__ {int rootfd; } ;


 int ENDGRENT () ;
 int EXIT_SUCCESS ;
 int EX_DATAERR ;
 int EX_IOERR ;
 int EX_NOUSER ;
 int F_OK ;
 struct group* GETGRENT () ;
 struct group* GETGRGID (int ) ;
 struct group* GETGRNAM (char*) ;
 struct passwd* GETPWNAM (int ) ;
 struct passwd* GETPWUID (scalar_t__) ;
 int LOGNAMESIZE ;
 int MAXLOGNAME ;
 int MAXPATHLEN ;
 int M_DELETE ;
 scalar_t__ PWALTDIR () ;
 TYPE_2__ PWF ;
 scalar_t__ PWF_ALT ;
 scalar_t__ PWF_REGULAR ;
 int SETGRENT () ;
 int UID_MAX ;
 int W_USER ;
 int _PATH_DEVNULL ;
 char* _PATH_MAILDIR ;
 int _PWF_FILES ;
 int _PWF_NIS ;
 int _PWF_SOURCE ;
 scalar_t__ access (char*,int ) ;
 int chggrent (char*,struct group*) ;
 TYPE_1__ conf ;
 int delgrent (struct group*) ;
 int delnispwent (char*,char*) ;
 int delpwent (struct passwd*) ;
 int err (int ,char*,...) ;
 int errx (int ,char*,...) ;
 int freopen (int ,char*,int ) ;
 int fstatat (int ,char*,struct stat*,int ) ;
 struct userconf* get_userconfig (char const*) ;
 int getopt (int,char**,char*) ;
 int * getpwuid (scalar_t__) ;
 char* optarg ;
 scalar_t__ pw_checkid (char*,int ) ;
 int pw_checkname (char*,int ) ;
 int pw_log (struct userconf*,int ,int ,char*,char*,int ,...) ;
 int rm_r (int ,char*,scalar_t__) ;
 int rmat (scalar_t__) ;
 int rmopie (char*) ;
 int snprintf (char*,int,char*,char*,...) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 int strlcpy (char*,int ,int) ;
 size_t strspn (char*,char*) ;
 int system (char*) ;
 int unlinkat (int ,char*,int ) ;
 int warn (char*) ;
 int warnx (char*,char*) ;

int
pw_user_del(int argc, char **argv, char *arg1)
{
 struct userconf *cnf = ((void*)0);
 struct passwd *pwd = ((void*)0);
 struct group *gr, *grp;
 char *name = ((void*)0);
 char grname[MAXLOGNAME];
 char *nispasswd = ((void*)0);
 char file[MAXPATHLEN];
 char home[MAXPATHLEN];
 const char *cfg = ((void*)0);
 struct stat st;
 intmax_t id = -1;
 int ch, rc;
 bool nis = 0;
 bool deletehome = 0;
 bool quiet = 0;

 if (arg1 != ((void*)0)) {
  if (arg1[strspn(arg1, "0123456789")] == '\0')
   id = pw_checkid(arg1, UID_MAX);
  else
   name = arg1;
 }

 while ((ch = getopt(argc, argv, "C:qn:u:rYy:")) != -1) {
  switch (ch) {
  case 'C':
   cfg = optarg;
   break;
  case 'q':
   quiet = 1;
   break;
  case 'n':
   name = optarg;
   break;
  case 'u':
   id = pw_checkid(optarg, UID_MAX);
   break;
  case 'r':
   deletehome = 1;
   break;
  case 'y':
   nispasswd = optarg;
   break;
  case 'Y':
   nis = 1;
   break;
  }
 }

 if (quiet)
  freopen(_PATH_DEVNULL, "w", stderr);

 if (id < 0 && name == ((void*)0))
  errx(EX_DATAERR, "username or id required");

 cnf = get_userconfig(cfg);

 if (nispasswd == ((void*)0))
  nispasswd = cnf->nispasswd;

 pwd = (name != ((void*)0)) ? GETPWNAM(pw_checkname(name, 0)) : GETPWUID(id);
 if (pwd == ((void*)0)) {
  if (name == ((void*)0))
   errx(EX_NOUSER, "no such uid `%ju'", (uintmax_t) id);
  errx(EX_NOUSER, "no such user `%s'", name);
 }

 if (PWF._altdir == PWF_REGULAR &&
     ((pwd->pw_fields & _PWF_SOURCE) != _PWF_FILES)) {
  if ((pwd->pw_fields & _PWF_SOURCE) == _PWF_NIS) {
   if (!nis && nispasswd && *nispasswd != '/')
    errx(EX_NOUSER, "Cannot remove NIS user `%s'",
        name);
  } else {
   errx(EX_NOUSER, "Cannot remove non local user `%s'",
       name);
  }
 }

 id = pwd->pw_uid;
 if (name == ((void*)0))
  name = pwd->pw_name;

 if (strcmp(pwd->pw_name, "root") == 0)
  errx(EX_DATAERR, "cannot remove user 'root'");


 if (PWALTDIR() != PWF_ALT)
  rmopie(pwd->pw_name);

 if (!PWALTDIR()) {

  snprintf(file, sizeof(file), "/var/cron/tabs/%s", pwd->pw_name);
  if (access(file, F_OK) == 0) {
   snprintf(file, sizeof(file), "crontab -u %s -r",
       pwd->pw_name);
   system(file);
  }
 }





 snprintf(file, sizeof(file), "%s/%s", _PATH_MAILDIR, pwd->pw_name);
 strlcpy(home, pwd->pw_dir, sizeof(home));
 gr = GETGRGID(pwd->pw_gid);
 if (gr != ((void*)0))
  strlcpy(grname, gr->gr_name, LOGNAMESIZE);
 else
  grname[0] = '\0';

 rc = delpwent(pwd);
 if (rc == -1)
  err(EX_IOERR, "user '%s' does not exist", pwd->pw_name);
 else if (rc != 0)
  err(EX_IOERR, "passwd update");

 if (nis && nispasswd && *nispasswd=='/') {
  rc = delnispwent(nispasswd, name);
  if (rc == -1)
   warnx("WARNING: user '%s' does not exist in NIS passwd",
       pwd->pw_name);
  else if (rc != 0)
   warn("WARNING: NIS passwd update");
 }

 grp = GETGRNAM(name);
 if (grp != ((void*)0) &&
     (grp->gr_mem == ((void*)0) || *grp->gr_mem == ((void*)0)) &&
     strcmp(name, grname) == 0)
  delgrent(GETGRNAM(name));
 SETGRENT();
 while ((grp = GETGRENT()) != ((void*)0)) {
  int i, j;
  char group[MAXLOGNAME];
  if (grp->gr_mem == ((void*)0))
   continue;

  for (i = 0; grp->gr_mem[i] != ((void*)0); i++) {
   if (strcmp(grp->gr_mem[i], name) != 0)
    continue;

   for (j = i; grp->gr_mem[j] != ((void*)0); j++)
    grp->gr_mem[j] = grp->gr_mem[j+1];
   strlcpy(group, grp->gr_name, MAXLOGNAME);
   chggrent(group, grp);
  }
 }
 ENDGRENT();

 pw_log(cnf, M_DELETE, W_USER, "%s(%ju) account removed", name,
     (uintmax_t)id);


 if (PWALTDIR() != PWF_ALT)
  unlinkat(conf.rootfd, file + 1, 0);


 if (!PWALTDIR() && getpwuid(id) == ((void*)0))
  rmat(id);


 if (PWALTDIR() != PWF_ALT && deletehome && *home == '/' &&
     GETPWUID(id) == ((void*)0) &&
     fstatat(conf.rootfd, home + 1, &st, 0) != -1) {
  rm_r(conf.rootfd, home, id);
  pw_log(cnf, M_DELETE, W_USER, "%s(%ju) home '%s' %s"
      "removed", name, (uintmax_t)id, home,
       fstatat(conf.rootfd, home + 1, &st, 0) == -1 ? "" : "not "
       "completely ");
 }

 return (EXIT_SUCCESS);
}
