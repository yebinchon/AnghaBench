
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msqid_kernel {int * label; } ;


 int mac_sysv_msgqueue_label_free (int *) ;

void
mac_sysvmsq_destroy(struct msqid_kernel *msqkptr)
{

 if (msqkptr->label != ((void*)0)) {
  mac_sysv_msgqueue_label_free(msqkptr->label);
  msqkptr->label = ((void*)0);
 }
}
