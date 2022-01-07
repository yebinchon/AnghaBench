
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IPC_RMID ;
 scalar_t__ child_pid ;
 int sender_shmid ;
 int shmctl (int,int ,int *) ;
 int warn (char*) ;

__attribute__((used)) static void
cleanup(void)
{




 if (child_pid != 0 && sender_shmid != -1) {
  if (shmctl(sender_shmid, IPC_RMID, ((void*)0)) == -1)
   warn("shmctl IPC_RMID");
 }
}
