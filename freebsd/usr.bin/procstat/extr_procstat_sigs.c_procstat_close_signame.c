
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int name ;


 int PS_OPT_SIGNUM ;
 int procstat_opts ;
 int snprintf (char*,int,char*,int) ;
 int strlcpy (char*,int ,int) ;
 int sys_nsig ;
 int * sys_signame ;
 char toupper (char) ;
 int xo_close_container (char*) ;

__attribute__((used)) static void
procstat_close_signame(int sig)
{
 char name[12];
 int i;

 if ((procstat_opts & PS_OPT_SIGNUM) == 0 && sig < sys_nsig) {
  strlcpy(name, sys_signame[sig], sizeof(name));
  for (i = 0; name[i] != 0; i++)
   name[i] = toupper(name[i]);
  xo_close_container(name);
 } else
  snprintf(name, 12, "%d", sig);
  xo_close_container(name);
}
