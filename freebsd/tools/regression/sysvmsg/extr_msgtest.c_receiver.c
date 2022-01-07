
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_mymsg {char* mtext; int mtype; } ;


 int MTYPE_1 ;
 int MTYPE_1_ACK ;
 int MTYPE_2 ;
 int MTYPE_2_ACK ;
 int err (int,char*) ;
 int exit (int ) ;
 int m1_str ;
 int m2_str ;
 int msgget (int ,int ) ;
 int msgkey ;
 scalar_t__ msgrcv (int,struct test_mymsg*,int,int ,int ) ;
 int msgsnd (int,struct test_mymsg*,scalar_t__,int ) ;
 int printf (char*,char*) ;
 scalar_t__ strcmp (char*,int ) ;
 scalar_t__ strlen (int ) ;

void
receiver()
{
 struct test_mymsg m;
 int msqid;

 if ((msqid = msgget(msgkey, 0)) == -1)
  err(1, "receiver: msgget");





 if (msgrcv(msqid, &m, sizeof(m.mtext), MTYPE_1, 0) !=
     strlen(m1_str) + 1)
  err(1, "receiver: msgrcv 1");

 printf("%s\n", m.mtext);
 if (strcmp(m.mtext, m1_str) != 0)
  err(1, "receiver: message 1 data isn't correct");

 m.mtype = MTYPE_1_ACK;

 if (msgsnd(msqid, &m, strlen(m1_str) + 1, 0) == -1)
  err(1, "receiver: msgsnd ack 1");





 if (msgrcv(msqid, &m, sizeof(m.mtext), MTYPE_2, 0) !=
     strlen(m2_str) + 1)
  err(1, "receiver: msgrcv 2");

 printf("%s\n", m.mtext);
 if (strcmp(m.mtext, m2_str) != 0)
  err(1, "receiver: message 2 data isn't correct");

 m.mtype = MTYPE_2_ACK;

 if (msgsnd(msqid, &m, strlen(m2_str) + 1, 0) == -1)
  err(1, "receiver: msgsnd ack 2");

 exit(0);
}
