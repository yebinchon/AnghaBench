
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 scalar_t__* childpids ;
 int maxprocs ;

__attribute__((used)) static int
findslot(pid_t pid)
{
 int slot;

 for (slot = 0; slot < maxprocs; slot++)
  if (childpids[slot] == pid)
   return (slot);
 return (-1);
}
