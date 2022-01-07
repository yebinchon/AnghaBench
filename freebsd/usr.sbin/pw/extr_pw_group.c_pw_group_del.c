
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct userconf {int dummy; } ;
struct group {int dummy; } ;
typedef int intmax_t ;


 int EXIT_SUCCESS ;
 int EX_IOERR ;
 int GID_MAX ;
 int M_DELETE ;
 int W_GROUP ;
 int _PATH_DEVNULL ;
 int delgrent (struct group*) ;
 int err (int ,char*,...) ;
 int freopen (int ,char*,int ) ;
 struct userconf* get_userconfig (char const*) ;
 struct group* getgroup (char*,int,int) ;
 int getopt (int,char**,char*) ;
 scalar_t__ nis_update () ;
 char* optarg ;
 int pw_checkid (char*,int ) ;
 int pw_log (struct userconf*,int ,int ,char*,...) ;
 int stderr ;
 size_t strspn (char*,char*) ;

int
pw_group_del(int argc, char **argv, char *arg1)
{
 struct userconf *cnf = ((void*)0);
 struct group *grp = ((void*)0);
 char *name;
 const char *cfg = ((void*)0);
 intmax_t id = -1;
 int ch, rc;
 bool quiet = 0;
 bool nis = 0;

 if (arg1 != ((void*)0)) {
  if (arg1[strspn(arg1, "0123456789")] == '\0')
   id = pw_checkid(arg1, GID_MAX);
  else
   name = arg1;
 }

 while ((ch = getopt(argc, argv, "C:qn:g:Y")) != -1) {
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
  case 'g':
   id = pw_checkid(optarg, GID_MAX);
   break;
  case 'Y':
   nis = 1;
   break;
  }
 }

 if (quiet)
  freopen(_PATH_DEVNULL, "w", stderr);
 grp = getgroup(name, id, 1);
 cnf = get_userconfig(cfg);
 rc = delgrent(grp);
 if (rc == -1)
  err(EX_IOERR, "group '%s' not available (NIS?)", name);
 else if (rc != 0)
  err(EX_IOERR, "group update");
 pw_log(cnf, M_DELETE, W_GROUP, "%s(%ju) removed", name,
     (uintmax_t)id);

 if (nis && nis_update() == 0)
  pw_log(cnf, M_DELETE, W_GROUP, "NIS maps updated");

 return (EXIT_SUCCESS);
}
