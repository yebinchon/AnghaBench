
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smbnode {TYPE_1__* n_mount; } ;
struct smb_share {int dummy; } ;
struct smb_cred {int dummy; } ;
typedef int off_t ;
typedef scalar_t__ caddr_t ;
struct TYPE_2__ {struct smb_share* sm_share; } ;


 int EINVAL ;
 scalar_t__ SMB_DIALECT (int ) ;
 scalar_t__ SMB_DIALECT_LANMAN1_0 ;
 int SSTOVC (struct smb_share*) ;
 int smbfs_smb_lockandx (struct smbnode*,int,uintptr_t,int ,int ,struct smb_cred*) ;

int
smbfs_smb_lock(struct smbnode *np, int op, caddr_t id,
 off_t start, off_t end, struct smb_cred *scred)
{
 struct smb_share *ssp = np->n_mount->sm_share;

 if (SMB_DIALECT(SSTOVC(ssp)) < SMB_DIALECT_LANMAN1_0)



  return EINVAL;
 else
  return smbfs_smb_lockandx(np, op, (uintptr_t)id, start, end, scred);
}
