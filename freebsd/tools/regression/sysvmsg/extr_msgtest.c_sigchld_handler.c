
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msqid_ds {int dummy; } ;


 int IPC_STAT ;
 scalar_t__ WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 scalar_t__ child_pid ;
 int err (int,char*) ;
 int errx (int,char*,...) ;
 int exit (int ) ;
 int msgctl (int ,int ,struct msqid_ds*) ;
 int print_msqid_ds (struct msqid_ds*,int) ;
 int sender_msqid ;
 scalar_t__ waitpid (scalar_t__,int*,int ) ;

void
sigchld_handler(int signo)
{
 struct msqid_ds m_ds;
 int cstatus;




 if (waitpid(child_pid, &cstatus, 0) != child_pid)
  err(1, "waitpid");

 if (WIFEXITED(cstatus) == 0)
  errx(1, "receiver exited abnormally");

 if (WEXITSTATUS(cstatus) != 0)
  errx(1, "receiver exited with status %d",
      WEXITSTATUS(cstatus));







 if (msgctl(sender_msqid, IPC_STAT, &m_ds) == -1)
  err(1, "msgctl IPC_STAT");

 print_msqid_ds(&m_ds, 0600);

 exit(0);
}
