
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucred {TYPE_1__* cr_prison; } ;
struct TYPE_2__ {int pr_mtx; int pr_hostuuid; } ;


 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int strlcpy (char*,int ,size_t) ;

void
getcredhostuuid(struct ucred *cred, char *buf, size_t size)
{

 mtx_lock(&cred->cr_prison->pr_mtx);
 strlcpy(buf, cred->cr_prison->pr_hostuuid, size);
 mtx_unlock(&cred->cr_prison->pr_mtx);
}
