
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _PATH_BSHELL ;
 int close (int ) ;
 int execl (char const*,char const*,char*,char*) ;
 int execvp (char*,char**) ;
 int exit (int) ;
 int fclose (int ) ;
 int fmfname ;
 int fname ;
 int free (int ) ;
 int fscript ;
 char* getenv (char*) ;
 int login_tty (int ) ;
 int master ;
 int setenv (char*,int ,int) ;
 int slave ;
 int warn (char*,char const*) ;

__attribute__((used)) static void
doshell(char **av)
{
 const char *shell;

 shell = getenv("SHELL");
 if (shell == ((void*)0))
  shell = _PATH_BSHELL;

 (void)close(master);
 (void)fclose(fscript);
 free(fmfname);
 login_tty(slave);
 setenv("SCRIPT", fname, 1);
 if (av[0]) {
  execvp(av[0], av);
  warn("%s", av[0]);
 } else {
  execl(shell, shell, "-i", (char *)((void*)0));
  warn("%s", shell);
 }
 exit(1);
}
