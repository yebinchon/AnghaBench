
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsclclient {int nfsc_renewthread; } ;


 int kproc_create (int ,void*,int *,int ,int ,char*) ;
 int start_nfscl ;

void
nfscl_start_renewthread(struct nfsclclient *clp)
{

 kproc_create(start_nfscl, (void *)clp, &clp->nfsc_renewthread, 0, 0,
     "nfscl");
}
