
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {char* member_0; char* member_1; int member_2; int * member_3; } ;
typedef int intmax_t ;


 int ENDGRENT () ;
 int EXIT_SUCCESS ;
 struct group* GETGRENT () ;
 int GID_MAX ;
 int SETGRENT () ;
 int _PATH_DEVNULL ;
 int freopen (int ,char*,int ) ;
 struct group* getgroup (char*,int,int) ;
 int getopt (int,char**,char*) ;
 char* optarg ;
 int print_group (struct group*,int) ;
 int pw_checkid (char*,int ) ;
 int stderr ;
 size_t strspn (char*,char*) ;

int
pw_group_show(int argc, char **argv, char *arg1)
{
 struct group *grp = ((void*)0);
 char *name = ((void*)0);
 intmax_t id = -1;
 int ch;
 bool all, force, quiet, pretty;

 all = force = quiet = pretty = 0;

 struct group fakegroup = {
  "nogroup",
  "*",
  -1,
  ((void*)0)
 };

 if (arg1 != ((void*)0)) {
  if (arg1[strspn(arg1, "0123456789")] == '\0')
   id = pw_checkid(arg1, GID_MAX);
  else
   name = arg1;
 }

 while ((ch = getopt(argc, argv, "C:qn:g:FPa")) != -1) {
  switch (ch) {
  case 'C':

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
  case 'F':
   force = 1;
   break;
  case 'P':
   pretty = 1;
   break;
  case 'a':
   all = 1;
   break;
  }
 }

 if (quiet)
  freopen(_PATH_DEVNULL, "w", stderr);

 if (all) {
  SETGRENT();
  while ((grp = GETGRENT()) != ((void*)0))
   print_group(grp, pretty);
  ENDGRENT();
  return (EXIT_SUCCESS);
 }

 grp = getgroup(name, id, !force);
 if (grp == ((void*)0))
  grp = &fakegroup;

 return (print_group(grp, pretty));
}
