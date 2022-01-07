
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct test_mymsg {int mtext; int mtype; } ;
struct sigaction {scalar_t__ sa_flags; int sa_mask; int sa_handler; } ;
struct TYPE_2__ {int mode; } ;
struct msqid_ds {TYPE_1__ msg_perm; } ;
typedef int sigset_t ;


 int IPC_CREAT ;
 int IPC_SET ;
 int IPC_STAT ;
 int MTYPE_1 ;
 int MTYPE_1_ACK ;
 int MTYPE_2 ;
 int MTYPE_2_ACK ;
 int SIGCHLD ;
 int SIGSYS ;
 int atexit (int ) ;
 int bzero (struct msqid_ds*,int) ;
 int child_pid ;
 int cleanup ;
 int err (int,char*) ;
 int errx (int,char*) ;
 int fork () ;
 int ftok (char*,int) ;
 int getpid () ;
 int m1_str ;
 int m2_str ;
 int msgctl (int,int ,struct msqid_ds*) ;
 int msgget (int ,int) ;
 int msgkey ;
 scalar_t__ msgrcv (int,struct test_mymsg*,int,int ,int ) ;
 int msgsnd (int,struct test_mymsg*,scalar_t__,int ) ;
 int print_msqid_ds (struct msqid_ds*,int) ;
 int receiver () ;
 int sender_msqid ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigchld_handler ;
 int sigemptyset (int *) ;
 int sigsuspend (int *) ;
 int sigsys_handler ;
 int strcpy (int ,int ) ;
 scalar_t__ strlen (int ) ;
 int usage () ;

int
main(int argc, char *argv[])
{
 struct sigaction sa;
 struct msqid_ds m_ds;
 struct test_mymsg m;
 sigset_t sigmask;

 if (argc != 2)
  usage();





 sa.sa_handler = sigsys_handler;
 sigemptyset(&sa.sa_mask);
 sa.sa_flags = 0;
 if (sigaction(SIGSYS, &sa, ((void*)0)) == -1)
  err(1, "sigaction SIGSYS");





 sa.sa_handler = sigchld_handler;
 sigemptyset(&sa.sa_mask);
 sa.sa_flags = 0;
 if (sigaction(SIGCHLD, &sa, ((void*)0)) == -1)
  err(1, "sigaction SIGCHLD");

 msgkey = ftok(argv[1], 4160);





 child_pid = getpid();





 if (atexit(cleanup) == -1)
  err(1, "atexit");

 if ((sender_msqid = msgget(msgkey, IPC_CREAT | 0640)) == -1)
  err(1, "msgget");

 if (msgctl(sender_msqid, IPC_STAT, &m_ds) == -1)
  err(1, "msgctl IPC_STAT");

 print_msqid_ds(&m_ds, 0640);

 m_ds.msg_perm.mode = (m_ds.msg_perm.mode & ~0777) | 0600;

 if (msgctl(sender_msqid, IPC_SET, &m_ds) == -1)
  err(1, "msgctl IPC_SET");

 bzero(&m_ds, sizeof m_ds);

 if (msgctl(sender_msqid, IPC_STAT, &m_ds) == -1)
  err(1, "msgctl IPC_STAT");

 if ((m_ds.msg_perm.mode & 0777) != 0600)
  err(1, "IPC_SET of mode didn't hold");

 print_msqid_ds(&m_ds, 0600);

 switch ((child_pid = fork())) {
 case -1:
  err(1, "fork");


 case 0:
  receiver();
  break;

 default:
  break;
 }




 m.mtype = MTYPE_1;
 strcpy(m.mtext, m1_str);
 if (msgsnd(sender_msqid, &m, strlen(m1_str) + 1, 0) == -1)
  err(1, "sender: msgsnd 1");

 if (msgrcv(sender_msqid, &m, sizeof(m.mtext), MTYPE_1_ACK, 0) !=
     strlen(m1_str) + 1)
  err(1, "sender: msgrcv 1 ack");

 print_msqid_ds(&m_ds, 0600);




 m.mtype = MTYPE_2;
 strcpy(m.mtext, m2_str);
 if (msgsnd(sender_msqid, &m, strlen(m2_str) + 1, 0) == -1)
  err(1, "sender: msgsnd 2");

 if (msgrcv(sender_msqid, &m, sizeof(m.mtext), MTYPE_2_ACK, 0) !=
     strlen(m2_str) + 1)
  err(1, "sender: msgrcv 2 ack");




 sigemptyset(&sigmask);
 (void) sigsuspend(&sigmask);




 errx(1, "sender: received unexpected signal");
}
