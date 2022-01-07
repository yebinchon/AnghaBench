
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct userconf {char* nispasswd; char* dotdir; char* newmail; char* logfile; char* home; char* shelldir; char* shell_default; char* default_group; char* default_class; void* password_days; void* expire_days; void* max_gid; void* min_gid; void* max_uid; void* min_uid; int * groups; int homemode; void* reuse_gids; void* reuse_uids; int default_password; } ;
typedef int ssize_t ;
typedef char mode_t ;
typedef int FILE ;


 int * GETGRNAM (char*) ;
 int GID_MAX ;
 int INT_MAX ;
 int UID_MAX ;
 int _DEF_DIRMODE ;
 int _UC_MAXSHELLS ;
 void* boolean_val (char*,int) ;
 scalar_t__ bourne_shell ;
 struct userconf config ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int free (char*) ;
 int getline (char**,size_t*,int *) ;
 int getmode (char*,int ) ;
 int * kwds ;
 char* newstr (char*) ;
 int passwd_val (char*,int) ;
 int printf (char*,char*,char*) ;
 char* setmode (char*) ;
 int sl_add (int *,char*) ;
 int * sl_init () ;
 scalar_t__ strcmp (char*,int ) ;
 char* strtok (char*,char const*) ;
 void* strtonum (char*,int ,int ,char const**) ;
 void* strtounum (char*,int ,int ,char const**) ;
 char** system_shells ;
 char* unquote (char*) ;
 int warnx (char*,char*) ;

struct userconf *
read_userconfig(char const * file)
{
 FILE *fp;
 char *buf, *p;
 const char *errstr;
 size_t linecap;
 ssize_t linelen;

 buf = ((void*)0);
 linecap = 0;

 if ((fp = fopen(file, "r")) == ((void*)0))
  return (&config);

 while ((linelen = getline(&buf, &linecap, fp)) > 0) {
  if (*buf && (p = strtok(buf, " \t\r\n=")) != ((void*)0) && *p != '#') {
   static char const toks[] = " \t\r\n,=";
   char *q = strtok(((void*)0), toks);
   int i = 0;
   mode_t *modeset;

   while (i < 143 && strcmp(p, kwds[i]) != 0)
    ++i;






   switch (i) {
   case 148:
    config.default_password = passwd_val(q, 1);
    break;
   case 130:
    config.reuse_uids = boolean_val(q, 0);
    break;
   case 131:
    config.reuse_gids = boolean_val(q, 0);
    break;
   case 134:
    config.nispasswd = (q == ((void*)0) || !boolean_val(q, 1))
     ? ((void*)0) : newstr(q);
    break;
   case 146:
    config.dotdir = (q == ((void*)0) || !boolean_val(q, 1))
     ? ((void*)0) : newstr(q);
    break;
    case 135:
    config.newmail = (q == ((void*)0) || !boolean_val(q, 1))
     ? ((void*)0) : newstr(q);
    break;
   case 140:
    config.logfile = (q == ((void*)0) || !boolean_val(q, 1))
     ? ((void*)0) : newstr(q);
    break;
   case 141:
    config.home = (q == ((void*)0) || !boolean_val(q, 1))
     ? "/home" : newstr(q);
    break;
   case 142:
    modeset = setmode(q);
    config.homemode = (q == ((void*)0) || !boolean_val(q, 1))
     ? _DEF_DIRMODE : getmode(modeset, _DEF_DIRMODE);
    free(modeset);
    break;
   case 129:
    config.shelldir = (q == ((void*)0) || !boolean_val(q, 1))
     ? "/bin" : newstr(q);
    break;
   case 128:
    for (i = 0; i < _UC_MAXSHELLS && q != ((void*)0); i++, q = strtok(((void*)0), toks))
     system_shells[i] = newstr(q);
    if (i > 0)
     while (i < _UC_MAXSHELLS)
      system_shells[i++] = ((void*)0);
    break;
   case 147:
    config.shell_default = (q == ((void*)0) || !boolean_val(q, 1))
     ? (char *) bourne_shell : newstr(q);
    break;
   case 149:
    q = unquote(q);
    config.default_group = (q == ((void*)0) || !boolean_val(q, 1) || GETGRNAM(q) == ((void*)0))
     ? ((void*)0) : newstr(q);
    break;
   case 144:
    while ((q = strtok(((void*)0), toks)) != ((void*)0)) {
     if (config.groups == ((void*)0))
      config.groups = sl_init();
     sl_add(config.groups, newstr(q));
    }
    break;
   case 150:
    config.default_class = (q == ((void*)0) || !boolean_val(q, 1))
     ? ((void*)0) : newstr(q);
    break;
   case 136:
    if ((q = unquote(q)) != ((void*)0)) {
     config.min_uid = strtounum(q, 0,
         UID_MAX, &errstr);
     if (errstr)
      warnx("Invalid min_uid: '%s';"
          " ignoring", q);
    }
    break;
   case 138:
    if ((q = unquote(q)) != ((void*)0)) {
     config.max_uid = strtounum(q, 0,
         UID_MAX, &errstr);
     if (errstr)
      warnx("Invalid max_uid: '%s';"
          " ignoring", q);
    }
    break;
   case 137:
    if ((q = unquote(q)) != ((void*)0)) {
     config.min_gid = strtounum(q, 0,
         GID_MAX, &errstr);
     if (errstr)
      warnx("Invalid min_gid: '%s';"
          " ignoring", q);
    }
    break;
   case 139:
    if ((q = unquote(q)) != ((void*)0)) {
     config.max_gid = strtounum(q, 0,
         GID_MAX, &errstr);
     if (errstr)
      warnx("Invalid max_gid: '%s';"
          " ignoring", q);
    }
    break;
   case 145:
    if ((q = unquote(q)) != ((void*)0)) {
     config.expire_days = strtonum(q, 0,
         INT_MAX, &errstr);
     if (errstr)
      warnx("Invalid expire days:"
          " '%s'; ignoring", q);
    }
    break;
   case 132:
    if ((q = unquote(q)) != ((void*)0)) {
     config.password_days = strtonum(q, 0,
         INT_MAX, &errstr);
     if (errstr)
      warnx("Invalid password days:"
          " '%s'; ignoring", q);
    }
    break;
   case 143:
   case 133:
    break;
   }
  }
 }
 free(buf);
 fclose(fp);

 return (&config);
}
