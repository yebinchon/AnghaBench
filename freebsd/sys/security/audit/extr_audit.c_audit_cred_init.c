
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int cr_audit; } ;


 int bzero (int *,int) ;

void
audit_cred_init(struct ucred *cred)
{

 bzero(&cred->cr_audit, sizeof(cred->cr_audit));
}
