
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {int dummy; } ;
struct smb_share {int dummy; } ;
struct smb_cred {int dummy; } ;


 scalar_t__ SMB_DIALECT (int ) ;
 scalar_t__ SMB_DIALECT_LANMAN2_0 ;
 int SSTOVC (struct smb_share*) ;
 scalar_t__ smbfs_query_info_alloc (struct smb_share*,struct statfs*,struct smb_cred*) ;
 int smbfs_query_info_disk (struct smb_share*,struct statfs*,struct smb_cred*) ;
 scalar_t__ smbfs_query_info_fs (struct smb_share*,struct statfs*,struct smb_cred*) ;

int
smbfs_smb_statfs(struct smb_share *ssp, struct statfs *sbp,
 struct smb_cred *scred)
{

 if (SMB_DIALECT(SSTOVC(ssp)) >= SMB_DIALECT_LANMAN2_0) {
  if (smbfs_query_info_fs(ssp, sbp, scred) == 0)
   return (0);
  if (smbfs_query_info_alloc(ssp, sbp, scred) == 0)
   return (0);
 }
 return (smbfs_query_info_disk(ssp, sbp, scred));
}
