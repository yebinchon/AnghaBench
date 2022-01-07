
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IPC_RMID ;
 scalar_t__ child_pid ;
 int msgctl (int,int ,int *) ;
 int sender_msqid ;
 int warn (char*) ;

void
cleanup()
{




 if (child_pid != 0 && sender_msqid != -1) {
  if (msgctl(sender_msqid, IPC_RMID, ((void*)0)) == -1)
   warn("msgctl IPC_RMID");
 }
}
