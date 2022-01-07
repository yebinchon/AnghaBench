
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef char* uintmax_t ;
typedef scalar_t__ uid_t ;
typedef void* time_t ;
struct userconf {char* nispasswd; char* dotdir; scalar_t__ homemode; int default_password; int shells; int shelldir; } ;
struct stat {int st_mode; } ;
struct passwd {char* pw_name; int pw_fields; scalar_t__ pw_uid; scalar_t__ pw_gid; void* pw_change; void* pw_expire; char* pw_shell; char* pw_class; char* pw_dir; char* pw_gecos; int pw_passwd; } ;
struct group {scalar_t__ gr_gid; char** gr_mem; char* gr_name; } ;
typedef scalar_t__ mode_t ;
typedef int login_cap_t ;
typedef scalar_t__ intmax_t ;
struct TYPE_7__ {scalar_t__ _altdir; } ;
struct TYPE_6__ {int fd; int rootfd; } ;
struct TYPE_5__ {size_t sl_cur; char** sl_str; } ;
typedef TYPE_1__ StringList ;


 int ENDGRENT () ;
 int EXIT_SUCCESS ;
 int EX_DATAERR ;
 int EX_NOPERM ;
 int EX_NOUSER ;
 int EX_OSFILE ;
 int EX_USAGE ;
 struct group* GETGRENT () ;
 struct group* GETGRGID (scalar_t__) ;
 struct group* GETGRNAM (char*) ;
 struct passwd* GETPWNAM (char*) ;
 struct passwd* GETPWUID (scalar_t__) ;
 int GID_MAX ;
 int M_UPDATE ;
 scalar_t__ PWALTDIR () ;
 TYPE_4__ PWF ;
 scalar_t__ PWF_ALT ;
 scalar_t__ PWF_REGULAR ;
 int SETGRENT () ;
 int S_ISDIR (int ) ;
 int UID_MAX ;
 int W_USER ;
 int _PATH_DEVNULL ;
 int _PWF_FILES ;
 int _PWF_NIS ;
 int _PWF_SOURCE ;
 int chggrent (char*,struct group*) ;
 TYPE_3__ conf ;
 int create_and_populate_homedir (struct userconf*,struct passwd*,char*,scalar_t__,int) ;
 int errx (int ,char*,...) ;
 int free (struct group*) ;
 int freopen (int ,char*,int ) ;
 int fstatat (int ,char*,struct stat*,int ) ;
 struct userconf* get_userconfig (char const*) ;
 scalar_t__ geteuid () ;
 int getopt (int,char**,char*) ;
 struct group* gr_add (struct group*,char*) ;
 int group_from_name_or_id (char*) ;
 int login_close (int *) ;
 int * login_getpwclass (struct passwd*) ;
 int * login_setcryptfmt (int *,char*,int *) ;
 scalar_t__ nis_update () ;
 char* optarg ;
 void* parse_date (void*,char*) ;
 int passwd_val (char*,int ) ;
 int perform_chgpwent (char*,struct passwd*,char*) ;
 int print_user (struct passwd*,int,int) ;
 int pw_checkfd (char*) ;
 scalar_t__ pw_checkid (char*,int ) ;
 char* pw_checkname (char*,int) ;
 int pw_log (struct userconf*,int ,int ,char*,...) ;
 int pw_password (struct userconf*,char*,int) ;
 int pw_set_passwd (struct passwd*,int,int,int) ;
 char* shell_path (int ,int ,char*) ;
 int split_groups (TYPE_1__**,char*) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 size_t strspn (char*,char*) ;
 void* time (int *) ;
 scalar_t__ validate_mode (char*) ;
 int warn (char*) ;
 int warnx (char*,char*) ;

int
pw_user_mod(int argc, char **argv, char *arg1)
{
 struct userconf *cnf;
 struct passwd *pwd;
 struct group *grp;
 StringList *groups = ((void*)0);
 char args[] = "C:qn:u:c:d:e:p:g:G:mM:l:k:s:w:L:h:H:NPYy:";
 const char *cfg = ((void*)0);
 char *gecos, *homedir, *grname, *name, *newname, *walk, *skel, *shell;
 char *passwd, *class, *nispasswd;
 login_cap_t *lc;
 struct stat st;
 intmax_t id = -1;
 int ch, fd = -1;
 size_t i, j;
 bool quiet, createhome, pretty, dryrun, nis, edited;
 bool precrypted;
 mode_t homemode = 0;
 time_t expire_time, password_time, now;

 expire_time = password_time = -1;
 gecos = homedir = grname = name = newname = skel = shell =((void*)0);
 passwd = ((void*)0);
 class = nispasswd = ((void*)0);
 quiet = createhome = pretty = dryrun = nis = precrypted = 0;
 edited = 0;
 now = time(((void*)0));

 if (arg1 != ((void*)0)) {
  if (arg1[strspn(arg1, "0123456789")] == '\0')
   id = pw_checkid(arg1, UID_MAX);
  else
   name = arg1;
 }

 while ((ch = getopt(argc, argv, args)) != -1) {
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
  case 'c':
   gecos = pw_checkname(optarg, 1);
   break;
  case 'd':
   homedir = optarg;
   break;
  case 'e':
   expire_time = parse_date(now, optarg);
   break;
  case 'p':
   password_time = parse_date(now, optarg);
   break;
  case 'g':
   group_from_name_or_id(optarg);
   grname = optarg;
   break;
  case 'G':
   split_groups(&groups, optarg);
   break;
  case 'm':
   createhome = 1;
   break;
  case 'M':
   homemode = validate_mode(optarg);
   break;
  case 'l':
   newname = optarg;
   break;
  case 'k':
   walk = skel = optarg;
   if (*walk == '/')
    walk++;
   if (fstatat(conf.rootfd, walk, &st, 0) == -1)
    errx(EX_OSFILE, "skeleton `%s' does not "
        "exists", skel);
   if (!S_ISDIR(st.st_mode))
    errx(EX_OSFILE, "skeleton `%s' is not a "
        "directory", skel);
   break;
  case 's':
   shell = optarg;
   break;
  case 'w':
   passwd = optarg;
   break;
  case 'L':
   class = pw_checkname(optarg, 0);
   break;
  case 'H':
   if (fd != -1)
    errx(EX_USAGE, "'-h' and '-H' are mutually "
        "exclusive options");
   fd = pw_checkfd(optarg);
   precrypted = 1;
   if (fd == '-')
    errx(EX_USAGE, "-H expects a file descriptor");
   break;
  case 'h':
   if (fd != -1)
    errx(EX_USAGE, "'-h' and '-H' are mutually "
        "exclusive options");
   fd = pw_checkfd(optarg);
   break;
  case 'N':
   dryrun = 1;
   break;
  case 'P':
   pretty = 1;
   break;
  case 'y':
   nispasswd = optarg;
   break;
  case 'Y':
   nis = 1;
   break;
  }
 }

 if (geteuid() != 0 && ! dryrun)
  errx(EX_NOPERM, "you must be root");

 if (quiet)
  freopen(_PATH_DEVNULL, "w", stderr);

 cnf = get_userconfig(cfg);

 if (id < 0 && name == ((void*)0))
  errx(EX_DATAERR, "username or id required");

 pwd = (name != ((void*)0)) ? GETPWNAM(pw_checkname(name, 0)) : GETPWUID(id);
 if (pwd == ((void*)0)) {
  if (name == ((void*)0))
   errx(EX_NOUSER, "no such uid `%ju'",
       (uintmax_t) id);
  errx(EX_NOUSER, "no such user `%s'", name);
 }

 if (name == ((void*)0))
  name = pwd->pw_name;

 if (nis && nispasswd == ((void*)0))
  nispasswd = cnf->nispasswd;

 if (PWF._altdir == PWF_REGULAR &&
     ((pwd->pw_fields & _PWF_SOURCE) != _PWF_FILES)) {
  if ((pwd->pw_fields & _PWF_SOURCE) == _PWF_NIS) {
   if (!nis && nispasswd && *nispasswd != '/')
    errx(EX_NOUSER, "Cannot modify NIS user `%s'",
        name);
  } else {
   errx(EX_NOUSER, "Cannot modify non local user `%s'",
       name);
  }
 }

 if (newname) {
  if (strcmp(pwd->pw_name, "root") == 0)
   errx(EX_DATAERR, "can't rename `root' account");
  if (strcmp(pwd->pw_name, newname) != 0) {
   pwd->pw_name = pw_checkname(newname, 0);
   edited = 1;
  }
 }

 if (id >= 0 && pwd->pw_uid != id) {
  pwd->pw_uid = id;
  edited = 1;
  if (pwd->pw_uid != 0 && strcmp(pwd->pw_name, "root") == 0)
   errx(EX_DATAERR, "can't change uid of `root' account");
  if (pwd->pw_uid == 0 && strcmp(pwd->pw_name, "root") != 0)
   warnx("WARNING: account `%s' will have a uid of 0 "
       "(superuser access!)", pwd->pw_name);
 }

 if (grname && pwd->pw_uid != 0) {
  grp = GETGRNAM(grname);
  if (grp == ((void*)0))
   grp = GETGRGID(pw_checkid(grname, GID_MAX));
  if (grp->gr_gid != pwd->pw_gid) {
   pwd->pw_gid = grp->gr_gid;
   edited = 1;
  }
 }


 if (password_time >= 0 && pwd->pw_change != password_time) {
  pwd->pw_change = password_time;
  edited = 1;
 }

 if (expire_time >= 0 && pwd->pw_expire != expire_time) {
  pwd->pw_expire = expire_time;
  edited = 1;
 }

 if (shell) {
  shell = shell_path(cnf->shelldir, cnf->shells, shell);
  if (shell == ((void*)0))
   shell = "";
  if (strcmp(shell, pwd->pw_shell) != 0) {
   pwd->pw_shell = shell;
   edited = 1;
  }
 }

 if (class && strcmp(pwd->pw_class, class) != 0) {
  pwd->pw_class = class;
  edited = 1;
 }

 if (homedir && strcmp(pwd->pw_dir, homedir) != 0) {
  pwd->pw_dir = homedir;
  edited = 1;
  if (fstatat(conf.rootfd, pwd->pw_dir, &st, 0) == -1) {
   if (!createhome)
    warnx("WARNING: home `%s' does not exist",
        pwd->pw_dir);
  } else if (!S_ISDIR(st.st_mode)) {
   warnx("WARNING: home `%s' is not a directory",
       pwd->pw_dir);
  }
 }

 if (passwd && conf.fd == -1) {
  lc = login_getpwclass(pwd);
  if (lc == ((void*)0) || login_setcryptfmt(lc, "sha512", ((void*)0)) == ((void*)0))
   warn("setting crypt(3) format");
  login_close(lc);
  cnf->default_password = passwd_val(passwd,
      cnf->default_password);
  pwd->pw_passwd = pw_password(cnf, pwd->pw_name, dryrun);
  edited = 1;
 }

 if (gecos && strcmp(pwd->pw_gecos, gecos) != 0) {
  pwd->pw_gecos = gecos;
  edited = 1;
 }

 if (fd != -1)
  edited = pw_set_passwd(pwd, fd, precrypted, 1);

 if (dryrun)
  return (print_user(pwd, pretty, 0));

 if (edited)
  perform_chgpwent(name, pwd, nis ? nispasswd : ((void*)0));

 if (groups != ((void*)0)) {

  SETGRENT();
  while ((grp = GETGRENT()) != ((void*)0)) {
   if (grp->gr_mem == ((void*)0))
    continue;
   for (i = 0; grp->gr_mem[i] != ((void*)0); i++) {
    if (strcmp(grp->gr_mem[i] , name) != 0)
     continue;
    for (j = i; grp->gr_mem[j] != ((void*)0) ; j++)
     grp->gr_mem[j] = grp->gr_mem[j+1];
    chggrent(grp->gr_name, grp);
    break;
   }
  }
  ENDGRENT();

  for (i = 0; i < groups->sl_cur; i++) {
   grp = GETGRNAM(groups->sl_str[i]);
   grp = gr_add(grp, pwd->pw_name);
   if (grp == ((void*)0))
    continue;
   chggrent(grp->gr_name, grp);
   free(grp);
  }
 }

 if (newname) {
  SETGRENT();
  while ((grp = GETGRENT()) != ((void*)0)) {
   if (grp->gr_mem == ((void*)0))
    continue;
   for (i = 0; grp->gr_mem[i] != ((void*)0); i++) {
    if (strcmp(grp->gr_mem[i], name) != 0)
     continue;
    grp->gr_mem[i] = newname;
    chggrent(grp->gr_name, grp);
    break;
   }
  }
 }


 if (newname)
  name = newname;
 pwd = GETPWNAM(name);
 if (pwd == ((void*)0))
  errx(EX_NOUSER, "user '%s' disappeared during update", name);
 grp = GETGRGID(pwd->pw_gid);
 pw_log(cnf, M_UPDATE, W_USER, "%s(%ju):%s(%ju):%s:%s:%s",
     pwd->pw_name, (uintmax_t)pwd->pw_uid,
     grp ? grp->gr_name : "unknown",
     (uintmax_t)(grp ? grp->gr_gid : (uid_t)-1),
     pwd->pw_gecos, pwd->pw_dir, pwd->pw_shell);






 if (PWALTDIR() != PWF_ALT && createhome && pwd->pw_dir &&
     *pwd->pw_dir == '/' && pwd->pw_dir[1]) {
  if (!skel)
   skel = cnf->dotdir;
  if (homemode == 0)
   homemode = cnf->homemode;
  create_and_populate_homedir(cnf, pwd, skel, homemode, 1);
 }

 if (nis && nis_update() == 0)
  pw_log(cnf, M_UPDATE, W_USER, "NIS maps updated");

 return (EXIT_SUCCESS);
}
