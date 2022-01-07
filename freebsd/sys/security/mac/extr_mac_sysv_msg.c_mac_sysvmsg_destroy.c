
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg {int * label; } ;


 int mac_sysv_msgmsg_label_free (int *) ;

void
mac_sysvmsg_destroy(struct msg *msgptr)
{

 if (msgptr->label != ((void*)0)) {
  mac_sysv_msgmsg_label_free(msgptr->label);
  msgptr->label = ((void*)0);
 }
}
