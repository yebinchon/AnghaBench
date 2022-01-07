
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct ksem {int ks_gid; int ks_uid; int ks_mode; } ;


 int PRIV_SEM_WRITE ;
 int VREAD ;
 int VREG ;
 int VWRITE ;
 int priv_check_cred (struct ucred*,int ) ;
 int vaccess (int ,int ,int ,int ,int,struct ucred*,int *) ;

__attribute__((used)) static int
ksem_access(struct ksem *ks, struct ucred *ucred)
{
 int error;

 error = vaccess(VREG, ks->ks_mode, ks->ks_uid, ks->ks_gid,
     VREAD | VWRITE, ucred, ((void*)0));
 if (error)
  error = priv_check_cred(ucred, PRIV_SEM_WRITE);
 return (error);
}
