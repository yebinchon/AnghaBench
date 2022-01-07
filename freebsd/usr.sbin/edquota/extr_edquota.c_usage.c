
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*,char*,char*,char*,char*,char*,char*,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 fprintf(stderr, "%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n",
  "usage: edquota [-uh] [-f fspath] [-p username] username ...",
  "       edquota [-u] -e fspath[:bslim[:bhlim[:islim[:ihlim]]]] [-e ...]",
  "               username ...",
  "       edquota -g [-h] [-f fspath] [-p groupname] groupname ...",
  "       edquota -g -e fspath[:bslim[:bhlim[:islim[:ihlim]]]] [-e ...]",
  "               groupname ...",
  "       edquota [-u] -t [-f fspath]",
  "       edquota -g -t [-f fspath]");
 exit(1);
}
