
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct userconf {int dummy; } ;
struct group {char* gr_name; scalar_t__ gr_gid; int * gr_mem; } ;
typedef scalar_t__ intmax_t ;


 int EXIT_SUCCESS ;
 int EX_IOERR ;
 int EX_SOFTWARE ;
 int EX_USAGE ;
 struct group* GETGRNAM (char*) ;
 int GID_MAX ;
 int M_UPDATE ;
 int W_GROUP ;
 int _PATH_DEVNULL ;
 int chggrent (char*,struct group*) ;
 int delete_members (struct group*,char*) ;
 int err (int ,char*) ;
 int errx (int ,char*,...) ;
 int freopen (int ,char*,int ) ;
 struct userconf* get_userconfig (char const*) ;
 struct group* getgroup (char*,scalar_t__,int) ;
 int getopt (int,char**,char*) ;
 int grp_add_members (struct group**,char*) ;
 int grp_set_passwd (struct group*,int,int,int) ;
 scalar_t__ nis_update () ;
 char* optarg ;
 int print_group (struct group*,int) ;
 int pw_checkfd (char*) ;
 scalar_t__ pw_checkid (char*,int ) ;
 char* pw_checkname (char*,int ) ;
 int pw_log (struct userconf*,int ,int ,char*,...) ;
 int stderr ;
 size_t strspn (char*,char*) ;

int
pw_group_mod(int argc, char **argv, char *arg1)
{
 struct userconf *cnf;
 struct group *grp = ((void*)0);
 const char *cfg = ((void*)0);
 char *oldmembers = ((void*)0);
 char *members = ((void*)0);
 char *newmembers = ((void*)0);
 char *newname = ((void*)0);
 char *name = ((void*)0);
 intmax_t id = -1;
 int ch, rc, fd = -1;
 bool quiet, pretty, dryrun, nis, precrypted;

 quiet = pretty = dryrun = nis = precrypted = 0;

 if (arg1 != ((void*)0)) {
  if (arg1[strspn(arg1, "0123456789")] == '\0')
   id = pw_checkid(arg1, GID_MAX);
  else
   name = arg1;
 }

 while ((ch = getopt(argc, argv, "C:qn:d:g:l:h:H:M:m:NPY")) != -1) {
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
  case 'd':
   oldmembers = optarg;
   break;
  case 'l':
   newname = optarg;
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
  case 'M':
   members = optarg;
   break;
  case 'm':
   newmembers = optarg;
   break;
  case 'N':
   dryrun = 1;
   break;
  case 'P':
   pretty = 1;
   break;
  case 'Y':
   nis = 1;
   break;
  }
 }
 if (quiet)
  freopen(_PATH_DEVNULL, "w", stderr);
 cnf = get_userconfig(cfg);
 grp = getgroup(name, id, 1);
 if (name == ((void*)0))
  name = grp->gr_name;
 if (id > 0)
  grp->gr_gid = id;

 if (newname != ((void*)0))
  grp->gr_name = pw_checkname(newname, 0);

 grp_set_passwd(grp, 1, fd, precrypted);







 if (members) {
  grp->gr_mem = ((void*)0);
  grp_add_members(&grp, members);
 } else if (oldmembers) {
  delete_members(grp, oldmembers);
 } else if (newmembers) {
  grp_add_members(&grp, newmembers);
 }

 if (dryrun) {
  print_group(grp, pretty);
  return (EXIT_SUCCESS);
 }

 if ((rc = chggrent(name, grp)) != 0) {
  if (rc == -1)
   errx(EX_IOERR, "group '%s' not available (NIS?)",
       grp->gr_name);
  else
   err(EX_IOERR, "group update");
 }

 if (newname)
  name = newname;


 if ((grp = GETGRNAM(name)) == ((void*)0))
  errx(EX_SOFTWARE, "group disappeared during update");

 pw_log(cnf, M_UPDATE, W_GROUP, "%s(%ju)", grp->gr_name,
     (uintmax_t)grp->gr_gid);

 if (nis && nis_update() == 0)
  pw_log(cnf, M_UPDATE, W_GROUP, "NIS maps updated");

 return (EXIT_SUCCESS);
}
