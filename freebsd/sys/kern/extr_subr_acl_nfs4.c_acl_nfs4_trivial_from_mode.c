
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acl {scalar_t__ acl_cnt; } ;
typedef int mode_t ;


 int acl_nfs4_compute_inherited_acl_psarc (int *,struct acl*,int ,int,int) ;

__attribute__((used)) static void
acl_nfs4_trivial_from_mode(struct acl *aclp, mode_t mode)
{

 aclp->acl_cnt = 0;
 acl_nfs4_compute_inherited_acl_psarc(((void*)0), aclp, mode, -1, -1);
}
