
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixl_pf {int num_vfs; int * vfs; } ;


 int ixl_notify_vf_link_state (struct ixl_pf*,int *) ;

void
ixl_broadcast_link_state(struct ixl_pf *pf)
{
 int i;

 for (i = 0; i < pf->num_vfs; i++)
  ixl_notify_vf_link_state(pf, &pf->vfs[i]);
}
