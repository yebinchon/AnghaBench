
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;
typedef int FILE ;


 int SIGHUP ;
 int SIGINT ;
 int SIG_BLOCK ;
 int SIG_SETMASK ;
 int fclose (int *) ;
 int file_pid (int *) ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 int sigprocmask (int ,int *,int *) ;
 int unregister_file (int *) ;
 int wait_child (int) ;

int
Pclose(FILE *ptr)
{
 int i;
 sigset_t nset, oset;

 i = file_pid(ptr);
 unregister_file(ptr);
 (void)fclose(ptr);
 (void)sigemptyset(&nset);
 (void)sigaddset(&nset, SIGINT);
 (void)sigaddset(&nset, SIGHUP);
 (void)sigprocmask(SIG_BLOCK, &nset, &oset);
 i = wait_child(i);
 (void)sigprocmask(SIG_SETMASK, &oset, ((void*)0));
 return (i);
}
