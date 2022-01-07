
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wallgroup {char const* name; int gid; struct wallgroup* next; } ;
struct utmpx {scalar_t__ ut_type; int ut_line; int ut_user; } ;
struct passwd {scalar_t__ pw_gid; } ;
struct iovec {int iov_len; int iov_base; } ;
struct group {int gr_gid; char** gr_mem; } ;
typedef scalar_t__ gid_t ;


 int LC_CTYPE ;
 scalar_t__ USER_PROCESS ;
 int exit (int ) ;
 int geteuid () ;
 struct group* getgrgid (scalar_t__) ;
 struct group* getgrnam (char const*) ;
 int getopt (int,char**,char*) ;
 struct passwd* getpwnam (int ) ;
 struct utmpx* getutxent () ;
 struct wallgroup* grouplist ;
 int makemsg (char*) ;
 scalar_t__ malloc (int) ;
 int mbuf ;
 int mbufsize ;
 int nobanner ;
 char const* optarg ;
 scalar_t__ optind ;
 int setlocale (int ,char*) ;
 scalar_t__ strcmp (char*,int ) ;
 char* ttymsg (struct iovec*,int,int ,int) ;
 scalar_t__ ttystat (int ) ;
 int usage () ;
 int warnx (char*,char const*) ;

int
main(int argc, char *argv[])
{
 struct iovec iov;
 struct utmpx *utmp;
 int ch;
 int ingroup;
 struct wallgroup *g;
 struct group *grp;
 char **np;
 const char *p;
 struct passwd *pw;

 (void)setlocale(LC_CTYPE, "");

 while ((ch = getopt(argc, argv, "g:n")) != -1)
  switch (ch) {
  case 'n':

   if (geteuid() == 0)
    nobanner = 1;
   break;
  case 'g':
   g = (struct wallgroup *)malloc(sizeof *g);
   g->next = grouplist;
   g->name = optarg;
   g->gid = -1;
   grouplist = g;
   break;
  case '?':
  default:
   usage();
  }
 argc -= optind;
 argv += optind;
 if (argc > 1)
  usage();

 for (g = grouplist; g; g = g->next) {
  grp = getgrnam(g->name);
  if (grp != ((void*)0))
   g->gid = grp->gr_gid;
  else
   warnx("%s: no such group", g->name);
 }

 makemsg(*argv);

 iov.iov_base = mbuf;
 iov.iov_len = mbufsize;

 while ((utmp = getutxent()) != ((void*)0)) {
  if (utmp->ut_type != USER_PROCESS)
   continue;
  if (ttystat(utmp->ut_line) != 0)
   continue;
  if (grouplist) {
   ingroup = 0;
   pw = getpwnam(utmp->ut_user);
   if (!pw)
    continue;
   for (g = grouplist; g && ingroup == 0; g = g->next) {
    if (g->gid == (gid_t)-1)
     continue;
    if (g->gid == pw->pw_gid)
     ingroup = 1;
    else if ((grp = getgrgid(g->gid)) != ((void*)0)) {
     for (np = grp->gr_mem; *np; np++) {
      if (strcmp(*np, utmp->ut_user) == 0) {
       ingroup = 1;
       break;
      }
     }
    }
   }
   if (ingroup == 0)
    continue;
  }
  if ((p = ttymsg(&iov, 1, utmp->ut_line, 60*5)) != ((void*)0))
   warnx("%s", p);
 }
 exit(0);
}
