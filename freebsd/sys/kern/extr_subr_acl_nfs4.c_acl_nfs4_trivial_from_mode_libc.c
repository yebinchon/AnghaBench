
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acl {scalar_t__ acl_cnt; } ;


 int acl_nfs4_sync_acl_from_mode_draft (struct acl*,int,int) ;
 int acl_nfs4_trivial_from_mode (struct acl*,int) ;

void
acl_nfs4_trivial_from_mode_libc(struct acl *aclp, int mode, int canonical_six)
{

 aclp->acl_cnt = 0;
 if (canonical_six)
  acl_nfs4_sync_acl_from_mode_draft(aclp, mode, -1);
 else
  acl_nfs4_trivial_from_mode(aclp, mode);
}
