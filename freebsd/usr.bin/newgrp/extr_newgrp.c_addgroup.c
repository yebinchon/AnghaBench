
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct group {scalar_t__ gr_gid; char** gr_mem; char* gr_passwd; } ;
typedef scalar_t__ gid_t ;
struct TYPE_2__ {scalar_t__ pw_gid; char* pw_name; } ;


 int PRIV_END ;
 int PRIV_START ;
 int _SC_NGROUPS_MAX ;
 char* crypt (char*,char*) ;
 int err (int,char*) ;
 int fprintf (int ,char*) ;
 int free (scalar_t__*) ;
 scalar_t__ getegid () ;
 struct group* getgrgid (scalar_t__) ;
 struct group* getgrnam (char const*) ;
 int getgroups (long,scalar_t__*) ;
 char* getpass (char*) ;
 scalar_t__ getuid () ;
 scalar_t__ inarray (scalar_t__,scalar_t__*,int) ;
 scalar_t__* malloc (int) ;
 int memmove (scalar_t__*,scalar_t__*,int) ;
 TYPE_1__* pwd ;
 scalar_t__ setgid (scalar_t__) ;
 scalar_t__ setgroups (int,scalar_t__ const*) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 long strtol (char const*,char**,int) ;
 int sysconf (int ) ;
 int warn (char*) ;
 int warnx (char*,...) ;

__attribute__((used)) static void
addgroup(const char *grpname)
{
 gid_t *grps;
 long lgid, ngrps_max;
 int dbmember, i, ngrps;
 gid_t egid;
 struct group *grp;
 char *ep, *pass, *cryptpw;
 char **p;

 egid = getegid();


 if ((grp = getgrnam(grpname)) == ((void*)0))
  if ((lgid = strtol(grpname, &ep, 10)) <= 0 || *ep != '\0' ||
      (grp = getgrgid((gid_t)lgid)) == ((void*)0) ) {
   warnx("%s: bad group name", grpname);
   return;
  }





 dbmember = 0;
 if (pwd->pw_gid == grp->gr_gid)
  dbmember = 1;
 for (p = grp->gr_mem; *p != ((void*)0); p++)
  if (strcmp(*p, pwd->pw_name) == 0) {
   dbmember = 1;
   break;
  }
 if (!dbmember && *grp->gr_passwd != '\0' && getuid() != 0) {
  pass = getpass("Password:");
  if (pass == ((void*)0))
   return;
  cryptpw = crypt(pass, grp->gr_passwd);
  if (cryptpw == ((void*)0) || strcmp(grp->gr_passwd, cryptpw) != 0) {
   fprintf(stderr, "Sorry\n");
   return;
  }
 }

 ngrps_max = sysconf(_SC_NGROUPS_MAX) + 1;
 if ((grps = malloc(sizeof(gid_t) * ngrps_max)) == ((void*)0))
  err(1, "malloc");
 if ((ngrps = getgroups(ngrps_max, (gid_t *)grps)) < 0) {
  warn("getgroups");
  goto end;
 }


 if (grp->gr_gid != egid && inarray(grp->gr_gid, grps, ngrps)) {
  for (i = 0; i < ngrps; i++)
   if (grps[i] == grp->gr_gid)
    break;
  ngrps--;
  memmove(&grps[i], &grps[i + 1], (ngrps - i) * sizeof(gid_t));
  PRIV_START;
  if (setgroups(ngrps, (const gid_t *)grps) < 0) {
   PRIV_END;
   warn("setgroups");
   goto end;
  }
  PRIV_END;
 }

 PRIV_START;
 if (setgid(grp->gr_gid)) {
  PRIV_END;
  warn("setgid");
  goto end;
 }
 PRIV_END;
 grps[0] = grp->gr_gid;


 if (egid != grp->gr_gid && !inarray(egid, grps, ngrps)) {
  if (ngrps == ngrps_max)
   warnx("too many groups");
  else {
   grps[ngrps++] = egid;
   PRIV_START;
   if (setgroups(ngrps, (const gid_t *)grps)) {
    PRIV_END;
    warn("setgroups");
    goto end;
   }
   PRIV_END;
  }
 }
end:
 free(grps);
}
