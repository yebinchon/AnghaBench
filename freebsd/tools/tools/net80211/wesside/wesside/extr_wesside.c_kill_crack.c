
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGINT ;
 int check_key () ;
 scalar_t__ crack_pid ;
 int exit (int) ;
 int kill (scalar_t__,int ) ;
 int perror (char*) ;
 int printf (char*) ;
 int time_print (char*,scalar_t__) ;

void kill_crack() {
 if (crack_pid == 0)
  return;

 printf("\n");
 time_print("Stopping crack PID=%d\n", crack_pid);



 if (kill(crack_pid, SIGINT) == -1) {
  perror("kill()");
  exit(1);
 }

 crack_pid = 0;

 check_key();
}
