
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct userconf {int dummy; } ;
typedef int intmax_t ;
struct TYPE_2__ {int checkduplicate; } ;


 int EXIT_SUCCESS ;
 int EX_DATAERR ;
 int EX_USAGE ;
 int * GETGRNAM (char*) ;
 int GID_MAX ;
 int M_ADD ;
 int W_GROUP ;
 int _PATH_DEVNULL ;
 TYPE_1__ conf ;
 int errx (int ,char*,...) ;
 int freopen (int ,char*,int ) ;
 struct userconf* get_userconfig (char const*) ;
 int getopt (int,char**,char*) ;
 int gr_gidpolicy (struct userconf*,int) ;
 int groupadd (struct userconf*,char*,int ,char*,int,int,int,int) ;
 scalar_t__ nis_update () ;
 char* optarg ;
 int pw_checkfd (char*) ;
 int pw_checkid (char*,int ) ;
 int pw_log (struct userconf*,int ,int ,char*) ;
 int stderr ;
 size_t strspn (char*,char*) ;

int
pw_group_add(int argc, char **argv, char *arg1)
{
 struct userconf *cnf = ((void*)0);
 char *name = ((void*)0);
 char *members = ((void*)0);
 const char *cfg = ((void*)0);
 intmax_t id = -1;
 int ch, rc, fd = -1;
 bool quiet, precrypted, dryrun, pretty, nis;

 quiet = precrypted = dryrun = pretty = nis = 0;

 if (arg1 != ((void*)0)) {
  if (arg1[strspn(arg1, "0123456789")] == '\0')
   id = pw_checkid(arg1, GID_MAX);
  else
   name = arg1;
 }

 while ((ch = getopt(argc, argv, "C:qn:g:h:H:M:oNPY")) != -1) {
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
  case 'o':
   conf.checkduplicate = 0;
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
 if (name == ((void*)0))
  errx(EX_DATAERR, "group name required");
 if (GETGRNAM(name) != ((void*)0))
  errx(EX_DATAERR, "group name `%s' already exists", name);
 cnf = get_userconfig(cfg);
 rc = groupadd(cnf, name, gr_gidpolicy(cnf, id), members, fd, dryrun,
     pretty, precrypted);
 if (nis && rc == EXIT_SUCCESS && nis_update() == 0)
  pw_log(cnf, M_ADD, W_GROUP, "NIS maps updated");

 return (rc);
}
