
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int printf (char*) ;
 scalar_t__ wait_child (int ) ;

int
wait_command(pid_t pid)
{

 if (wait_child(pid) < 0) {
  printf("Fatal error in process.\n");
  return (-1);
 }
 return (0);
}
