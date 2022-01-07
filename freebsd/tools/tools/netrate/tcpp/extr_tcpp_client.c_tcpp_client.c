
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_sec; int tv_nsec; } ;
struct tcpp_header {int dummy; } ;
typedef scalar_t__ pid_t ;
typedef int intmax_t ;
typedef int cp_time_start ;
typedef int cp_time_finish ;


 int CLOCK_REALTIME ;
 int CPUSTATES ;
 size_t CP_IDLE ;
 size_t CP_INTR ;
 size_t CP_NICE ;
 size_t CP_SYS ;
 size_t CP_USER ;
 int SIGKILL ;
 int SYSCTLNAME_CPTIME ;
 scalar_t__ WEXITSTATUS (int) ;
 int bflag ;
 int bzero (scalar_t__*,int) ;
 scalar_t__ clock_gettime (int ,struct timespec*) ;
 int err (int,char*,...) ;
 int errx (int,char*,...) ;
 int exit (int) ;
 scalar_t__ fork () ;
 scalar_t__ hflag ;
 int kill (scalar_t__,int ) ;
 scalar_t__* malloc (int) ;
 int payload_len ;
 int pflag ;
 scalar_t__* pid_list ;
 int printf (char*,...) ;
 scalar_t__ sysctlbyname (int ,long**,size_t*,int *,int ) ;
 int tcpp_client_worker (int) ;
 int tflag ;
 int timespecsub (struct timespec*,struct timespec*,struct timespec*) ;
 scalar_t__ waitpid (scalar_t__,int*,int ) ;
 int warn (char*) ;

void
tcpp_client(void)
{
 struct timespec ts_start, ts_finish;
 long cp_time_start[CPUSTATES], cp_time_finish[CPUSTATES];
 long ticks;
 size_t size;
 pid_t pid;
 int i, failed, status;

 if (bflag < sizeof(struct tcpp_header))
  errx(-1, "Can't use -b less than %zu\n",
     sizeof(struct tcpp_header));
 payload_len = bflag - sizeof(struct tcpp_header);

 pid_list = malloc(sizeof(*pid_list) * pflag);
 if (pid_list == ((void*)0))
  err(-1, "malloc pid_list");
 bzero(pid_list, sizeof(*pid_list) * pflag);




 size = sizeof(cp_time_start);
 if (sysctlbyname(SYSCTLNAME_CPTIME, &cp_time_start, &size, ((void*)0), 0)
     < 0)
  err(-1, "sysctlbyname: %s", SYSCTLNAME_CPTIME);
 if (clock_gettime(CLOCK_REALTIME, &ts_start) < 0)
  err(-1, "clock_gettime");
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
   tcpp_client_worker(i);
   exit(0);
  }
  pid_list[i] = pid;
 }




 failed = 0;
 for (i = 0; i < pflag; i++) {
  if (pid_list[i] != 0) {
   while (waitpid(pid_list[i], &status, 0) != pid_list[i]);
   if (WEXITSTATUS(status) != 0)
    failed = 1;
  }
 }
 if (clock_gettime(CLOCK_REALTIME, &ts_finish) < 0)
  err(-1, "clock_gettime");
 size = sizeof(cp_time_finish);
 if (sysctlbyname(SYSCTLNAME_CPTIME, &cp_time_finish, &size, ((void*)0), 0)
     < 0)
  err(-1, "sysctlbyname: %s", SYSCTLNAME_CPTIME);
 timespecsub(&ts_finish, &ts_start, &ts_finish);

 if (failed)
  errx(-1, "Too many errors");

 if (hflag)
  printf("bytes,seconds,conn/s,Gb/s,user%%,nice%%,sys%%,"
      "intr%%,idle%%\n");




 printf("%jd,", bflag * tflag * pflag);
 printf("%jd.%09jd,", (intmax_t)ts_finish.tv_sec,
     (intmax_t)(ts_finish.tv_nsec));




 printf("%f,", (double)(pflag * tflag)/
     (ts_finish.tv_sec + ts_finish.tv_nsec * 1e-9));
 printf("%f,", (double)(bflag * tflag * pflag * 8) /
     (ts_finish.tv_sec + ts_finish.tv_nsec * 1e-9) * 1e-9);




 ticks = 0;
 for (i = 0; i < CPUSTATES; i++) {
  cp_time_finish[i] -= cp_time_start[i];
  ticks += cp_time_finish[i];
 }
 printf("%0.02f,", (float)(100 * cp_time_finish[CP_USER]) / ticks);
 printf("%0.02f,", (float)(100 * cp_time_finish[CP_NICE]) / ticks);
 printf("%0.02f,", (float)(100 * cp_time_finish[CP_SYS]) / ticks);
 printf("%0.02f,", (float)(100 * cp_time_finish[CP_INTR]) / ticks);
 printf("%0.02f", (float)(100 * cp_time_finish[CP_IDLE]) / ticks);
 printf("\n");
}
