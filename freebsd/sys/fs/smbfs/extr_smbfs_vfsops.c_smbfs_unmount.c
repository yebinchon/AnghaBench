
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_ucred; } ;
struct smbmount {scalar_t__ sm_didrele; struct smb_dev* sm_dev; int sm_share; } ;
struct smb_dev {int dummy; } ;
struct smb_cred {int dummy; } ;
struct mount {int mnt_flag; int * mnt_data; } ;


 int EBUSY ;
 int FORCECLOSE ;
 int MNT_FORCE ;
 int MNT_ILOCK (struct mount*) ;
 int MNT_IUNLOCK (struct mount*) ;
 int MNT_LOCAL ;
 int M_SMBFSDATA ;
 int SMBVDEBUG (char*,int) ;
 int SMB_LOCK () ;
 int SMB_UNLOCK () ;
 struct smbmount* VFSTOSMBFS (struct mount*) ;
 struct thread* curthread ;
 int free (struct smbmount*,int ) ;
 int panic (char*) ;
 int sdp_trydestroy (struct smb_dev*) ;
 int smb_makescred (struct smb_cred*,struct thread*,int ) ;
 int smb_share_lock (int ) ;
 int smb_share_put (int ,struct smb_cred*) ;
 int smbfs_free_scred (struct smb_cred*) ;
 struct smb_cred* smbfs_malloc_scred () ;
 int vflush (struct mount*,int,int,struct thread*) ;

__attribute__((used)) static int
smbfs_unmount(struct mount *mp, int mntflags)
{
 struct thread *td;
 struct smbmount *smp = VFSTOSMBFS(mp);
 struct smb_cred *scred;
 struct smb_dev *dev;
 int error, flags;

 SMBVDEBUG("smbfs_unmount: flags=%04x\n", mntflags);
 td = curthread;
 flags = 0;
 if (mntflags & MNT_FORCE)
  flags |= FORCECLOSE;
 do {
  smp->sm_didrele = 0;

  error = vflush(mp, 1, flags, td);
 } while (error == EBUSY && smp->sm_didrele != 0);
 if (error)
  return error;
 scred = smbfs_malloc_scred();
 smb_makescred(scred, td, td->td_ucred);
 error = smb_share_lock(smp->sm_share);
 if (error)
  goto out;
 smb_share_put(smp->sm_share, scred);
 SMB_LOCK();
 dev = smp->sm_dev;
 if (!dev)
  panic("No private data for mount point");
 sdp_trydestroy(dev);
 mp->mnt_data = ((void*)0);
 SMB_UNLOCK();
 free(smp, M_SMBFSDATA);
 MNT_ILOCK(mp);
 mp->mnt_flag &= ~MNT_LOCAL;
 MNT_IUNLOCK(mp);
out:
 smbfs_free_scred(scred);
 return error;
}
