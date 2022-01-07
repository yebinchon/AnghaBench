
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int * childpids ;
 int curprocs ;
 int findfreeslot () ;

__attribute__((used)) static void
pids_add(pid_t pid)
{
 int slot;

 slot = findfreeslot();
 childpids[slot] = pid;
 curprocs++;
}
