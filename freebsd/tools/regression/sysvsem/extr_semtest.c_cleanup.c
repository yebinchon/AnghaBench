
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IPC_RMID ;
 scalar_t__ child_pid ;
 int semctl (int,int ,int ) ;
 int sender_semid ;
 int warn (char*) ;

void
cleanup()
{




 if (child_pid != 0 && sender_semid != -1) {
  if (semctl(sender_semid, 0, IPC_RMID) == -1)
   warn("semctl IPC_RMID");
 }
}
