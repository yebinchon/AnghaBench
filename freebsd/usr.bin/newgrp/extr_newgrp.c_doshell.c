
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* pw_shell; } ;


 char* _PATH_BSHELL ;
 int err (int,char*,char const*) ;
 int execl (char const*,char const*,char*) ;
 TYPE_1__* pwd ;

__attribute__((used)) static void
doshell(void)
{
 const char *shell;

 shell = pwd->pw_shell;
 if (*shell == '\0')
  shell = _PATH_BSHELL;
 execl(shell, shell, (char *)((void*)0));
 err(1, "%s", shell);
}
