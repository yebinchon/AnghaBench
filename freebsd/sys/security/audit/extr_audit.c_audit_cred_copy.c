
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int cr_audit; } ;


 int bcopy (int *,int *,int) ;

void
audit_cred_copy(struct ucred *src, struct ucred *dest)
{

 bcopy(&src->cr_audit, &dest->cr_audit, sizeof(dest->cr_audit));
}
