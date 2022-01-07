
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smbnode {int n_flag; } ;
struct smb_cred {int dummy; } ;


 int NFLUSHWIRE ;
 int smb_smb_flush (struct smbnode*,struct smb_cred*) ;

int
smbfs_smb_flush(struct smbnode *np, struct smb_cred *scred)
{
 if (np->n_flag & NFLUSHWIRE)
  return (smb_smb_flush(np, scred));
 return (0);
}
