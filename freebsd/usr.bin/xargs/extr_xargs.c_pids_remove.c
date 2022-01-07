
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int clearslot (int) ;
 int curprocs ;
 int findslot (int ) ;

__attribute__((used)) static int
pids_remove(pid_t pid)
{
 int slot;

 if ((slot = findslot(pid)) < 0)
  return (0);

 clearslot(slot);
 curprocs--;
 return (1);
}
