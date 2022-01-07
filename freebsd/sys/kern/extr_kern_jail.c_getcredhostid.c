
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucred {TYPE_1__* cr_prison; } ;
struct TYPE_2__ {unsigned long pr_hostid; int pr_mtx; } ;


 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
getcredhostid(struct ucred *cred, unsigned long *hostid)
{

 mtx_lock(&cred->cr_prison->pr_mtx);
 *hostid = cred->cr_prison->pr_hostid;
 mtx_unlock(&cred->cr_prison->pr_mtx);
}
