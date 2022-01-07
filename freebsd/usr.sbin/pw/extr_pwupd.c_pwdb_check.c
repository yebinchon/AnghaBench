
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pid_t ;
struct TYPE_2__ {char* etcpath; } ;


 int EIO ;
 scalar_t__ WEXITSTATUS (int) ;
 int _MASTERPASSWD ;
 int _PATH_PWD ;
 char* _PATH_PWD_MKDB ;
 int _exit (int) ;
 TYPE_1__ conf ;
 int errno ;
 int execv (char*,char**) ;
 int fork () ;
 char* getpwpath (int ) ;
 scalar_t__ strcmp (char*,int ) ;
 int waitpid (int,int*,int ) ;

__attribute__((used)) static int
pwdb_check(void)
{
 int i = 0;
 pid_t pid;
 char *args[10];

 args[i++] = _PATH_PWD_MKDB;
 args[i++] = "-C";

 if (strcmp(conf.etcpath, _PATH_PWD) != 0) {
  args[i++] = "-d";
  args[i++] = conf.etcpath;
 }
 args[i++] = getpwpath(_MASTERPASSWD);
 args[i] = ((void*)0);

 if ((pid = fork()) == -1)
  i = errno;
 else if (pid == 0) {
  execv(args[0], args);
  _exit(1);
 } else {
  waitpid(pid, &i, 0);
  if (WEXITSTATUS(i))
   i = EIO;
 }

 return (i);
}
