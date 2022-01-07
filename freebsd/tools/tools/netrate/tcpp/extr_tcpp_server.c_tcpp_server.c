
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;
typedef int cp_time_last ;


 int CPUSTATES ;
 size_t CP_IDLE ;
 size_t CP_INTR ;
 size_t CP_NICE ;
 size_t CP_SYS ;
 size_t CP_USER ;
 int SIGKILL ;
 int SYSCTLNAME_CPTIME ;
 int bcopy (long*,long*,int) ;
 int bzero (scalar_t__*,int) ;
 int err (int,char*,...) ;
 int exit (int) ;
 scalar_t__ fork () ;
 int kill (scalar_t__,int ) ;
 scalar_t__* malloc (int) ;
 int pflag ;
 scalar_t__* pid_list ;
 int printf (char*,int,int,int,int,int) ;
 int sleep (int) ;
 scalar_t__ sysctlbyname (int ,long**,size_t*,int *,int ) ;
 int tcpp_server_worker (int) ;
 scalar_t__ waitpid (scalar_t__,int *,int ) ;
 int warn (char*) ;

void
tcpp_server(void)
{




 pid_t pid;
 int i;

 pid_list = malloc(sizeof(*pid_list) * pflag);
 if (pid_list == ((void*)0))
  err(-1, "malloc pid_list");
 bzero(pid_list, sizeof(*pid_list) * pflag);




 for (i = 0; i < pflag; i++) {
  pid = fork();
  if (pid < 0) {
   warn("fork");
   for (i = 0; i < pflag; i++) {
    if (pid_list[i] != 0)
     (void)kill(pid_list[i], SIGKILL);
   }
   exit(-1);
  }
  if (pid == 0) {
   tcpp_server_worker(i);
   exit(0);
  }
  pid_list[i] = pid;
 }
 for (i = 0; i < pflag; i++) {
  if (pid_list[i] != 0) {
   while (waitpid(pid_list[i], ((void*)0), 0) != pid_list[i]);
  }
 }
}
