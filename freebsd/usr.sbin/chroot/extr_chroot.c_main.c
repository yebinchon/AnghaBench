
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
struct passwd {scalar_t__ pw_uid; } ;
struct group {scalar_t__ gr_gid; } ;
typedef scalar_t__ gid_t ;


 char* _PATH_BSHELL ;
 int _SC_NGROUPS_MAX ;
 int chdir (char*) ;
 int chroot (char*) ;
 int err (int,char*,...) ;
 int errx (int,char*,...) ;
 int execlp (char const*,char const*,char*,char*) ;
 int execvp (char*,char**) ;
 char* getenv (char*) ;
 struct group* getgrnam (char*) ;
 int getopt (int,char**,char*) ;
 struct passwd* getpwnam (char*) ;
 scalar_t__ isdigit (unsigned char) ;
 scalar_t__* malloc (int) ;
 char* optarg ;
 scalar_t__ optind ;
 int setgid (scalar_t__) ;
 int setgroups (int,scalar_t__*) ;
 int setuid (scalar_t__) ;
 char* strsep (char**,char*) ;
 scalar_t__ strtoul (char*,char**,int ) ;
 int sysconf (int ) ;
 int usage () ;

int
main(int argc, char *argv[])
{
 struct group *gp;
 struct passwd *pw;
 char *endp, *p, *user, *group, *grouplist;
 const char *shell;
 gid_t gid, *gidlist;
 uid_t uid;
 int ch, gids;
 long ngroups_max;

 gid = 0;
 uid = 0;
 user = group = grouplist = ((void*)0);
 while ((ch = getopt(argc, argv, "G:g:u:")) != -1) {
  switch(ch) {
  case 'u':
   user = optarg;
   if (*user == '\0')
    usage();
   break;
  case 'g':
   group = optarg;
   if (*group == '\0')
    usage();
   break;
  case 'G':
   grouplist = optarg;
   if (*grouplist == '\0')
    usage();
   break;
  case '?':
  default:
   usage();
  }
 }
 argc -= optind;
 argv += optind;

 if (argc < 1)
  usage();

 if (group != ((void*)0)) {
  if (isdigit((unsigned char)*group)) {
   gid = (gid_t)strtoul(group, &endp, 0);
   if (*endp != '\0')
    goto getgroup;
  } else {
 getgroup:
   if ((gp = getgrnam(group)) != ((void*)0))
    gid = gp->gr_gid;
   else
    errx(1, "no such group `%s'", group);
  }
 }

 ngroups_max = sysconf(_SC_NGROUPS_MAX) + 1;
 if ((gidlist = malloc(sizeof(gid_t) * ngroups_max)) == ((void*)0))
  err(1, "malloc");
 for (gids = 0;
     (p = strsep(&grouplist, ",")) != ((void*)0) && gids < ngroups_max; ) {
  if (*p == '\0')
   continue;

  if (isdigit((unsigned char)*p)) {
   gidlist[gids] = (gid_t)strtoul(p, &endp, 0);
   if (*endp != '\0')
    goto getglist;
  } else {
 getglist:
   if ((gp = getgrnam(p)) != ((void*)0))
    gidlist[gids] = gp->gr_gid;
   else
    errx(1, "no such group `%s'", p);
  }
  gids++;
 }
 if (p != ((void*)0) && gids == ngroups_max)
  errx(1, "too many supplementary groups provided");

 if (user != ((void*)0)) {
  if (isdigit((unsigned char)*user)) {
   uid = (uid_t)strtoul(user, &endp, 0);
   if (*endp != '\0')
    goto getuser;
  } else {
 getuser:
   if ((pw = getpwnam(user)) != ((void*)0))
    uid = pw->pw_uid;
   else
    errx(1, "no such user `%s'", user);
  }
 }

 if (chdir(argv[0]) == -1 || chroot(".") == -1)
  err(1, "%s", argv[0]);

 if (gids && setgroups(gids, gidlist) == -1)
  err(1, "setgroups");
 if (group && setgid(gid) == -1)
  err(1, "setgid");
 if (user && setuid(uid) == -1)
  err(1, "setuid");

 if (argv[1]) {
  execvp(argv[1], &argv[1]);
  err(1, "%s", argv[1]);
 }

 if (!(shell = getenv("SHELL")))
  shell = _PATH_BSHELL;
 execlp(shell, shell, "-i", (char *)((void*)0));
 err(1, "%s", shell);

}
