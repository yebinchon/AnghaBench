
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cred {int cr_issetugid; int cr_svuid; int cr_euid; int cr_ruid; } ;


 int getresuid (int *,int *,int *) ;
 int issetugid () ;

__attribute__((used)) static int
cred_get(struct cred *cred)
{
 int error;

 error = getresuid(&cred->cr_ruid, &cred->cr_euid, &cred->cr_svuid);
 if (error)
  return (error);

 cred->cr_issetugid = issetugid();

 return (0);
}
