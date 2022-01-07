
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int * p_label; } ;


 int mac_proc_label_free (int *) ;

void
mac_proc_destroy(struct proc *p)
{

 if (p->p_label != ((void*)0)) {
  mac_proc_label_free(p->p_label);
  p->p_label = ((void*)0);
 }
}
