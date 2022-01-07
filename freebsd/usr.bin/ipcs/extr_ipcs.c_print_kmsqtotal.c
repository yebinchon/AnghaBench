
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msginfo {int msgmax; int msgmni; int msgmnb; int msgtql; int msgssz; int msgseg; } ;


 int printf (char*,...) ;

void
print_kmsqtotal(struct msginfo local_msginfo)
{

 printf("msginfo:\n");
 printf("\tmsgmax: %12d\t(max characters in a message)\n",
     local_msginfo.msgmax);
 printf("\tmsgmni: %12d\t(# of message queues)\n",
     local_msginfo.msgmni);
 printf("\tmsgmnb: %12d\t(max characters in a message queue)\n",
     local_msginfo.msgmnb);
 printf("\tmsgtql: %12d\t(max # of messages in system)\n",
     local_msginfo.msgtql);
 printf("\tmsgssz: %12d\t(size of a message segment)\n",
     local_msginfo.msgssz);
 printf("\tmsgseg: %12d\t(# of message segments in system)\n\n",
     local_msginfo.msgseg);
}
