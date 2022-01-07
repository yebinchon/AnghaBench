
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ fd; } ;


 int crack_pid ;
 int crack_start ;
 int do_crack () ;
 int err (int,char*) ;
 int exit (int) ;
 int fork () ;
 int fsync (scalar_t__) ;
 int gettimeofday (int *,int *) ;
 int kill_crack () ;
 int printf (char*) ;
 scalar_t__ thresh_incr ;
 int time_print (char*,...) ;
 int wep_thresh ;
 TYPE_1__ weplog ;

void try_crack() {
 if (crack_pid) {
  printf("\n");
  time_print("Warning... previous crack still running!\n");
  kill_crack();
 }

 if (weplog.fd) {
  if (fsync(weplog.fd) == -1)
   err(1, "fsync");
 }

 crack_pid = fork();

 if (crack_pid == -1)
  err(1, "fork");


 if (crack_pid == 0) {
  if (!do_crack())
   printf("\nCrack unsuccessful\n");
  exit(1);
 }


 printf("\n");
 time_print("Starting crack PID=%d\n", crack_pid);
 if (gettimeofday(&crack_start, ((void*)0)) == -1)
  err(1, "gettimeofday");


 wep_thresh += thresh_incr;
}
