
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIGGEST ;
 int CREATOR ;
 int OUTSTANDING ;
 int PID ;
 int TIME ;
 int printf (char*,...) ;

void print_kmsqheader(int option)
{

 printf("Message Queues:\n");
 printf("T %12s %12s %-11s %-8s %-8s",
     "ID", "KEY", "MODE", "OWNER", "GROUP");
 if (option & CREATOR)
  printf(" %-8s %-8s", "CREATOR", "CGROUP");
 if (option & OUTSTANDING)
  printf(" %20s %20s", "CBYTES", "QNUM");
 if (option & BIGGEST)
  printf(" %20s", "QBYTES");
 if (option & PID)
  printf(" %12s %12s", "LSPID", "LRPID");
 if (option & TIME)
  printf(" %-8s %-8s %-8s", "STIME", "RTIME", "CTIME");
 printf("\n");
}
