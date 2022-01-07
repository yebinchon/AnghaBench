
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {struct file* td_fpop; } ;
struct smb_share {int dummy; } ;
struct smb_dev {int refcount; struct smb_share* sd_share; } ;
struct smb_cred {int dummy; } ;
struct file {int dummy; } ;


 int ENOTCONN ;
 int SMB_LOCK () ;
 int SMB_UNLOCK () ;
 int cap_read_rights ;
 struct thread* curthread ;
 int devfs_get_cdevpriv (void**) ;
 int fdrop (struct file*,struct thread*) ;
 int fget (struct thread*,int,int *,struct file**) ;
 int smb_share_get (struct smb_share*,struct smb_cred*) ;

int
smb_dev2share(int fd, int mode, struct smb_cred *scred,
 struct smb_share **sspp, struct smb_dev **ssdp)
{
 struct file *fp, *fptmp;
 struct smb_dev *sdp;
 struct smb_share *ssp;
 struct thread *td;
 int error;

 td = curthread;
 error = fget(td, fd, &cap_read_rights, &fp);
 if (error)
  return (error);
 fptmp = td->td_fpop;
 td->td_fpop = fp;
 error = devfs_get_cdevpriv((void **)&sdp);
 td->td_fpop = fptmp;
 fdrop(fp, td);
 if (error || sdp == ((void*)0))
  return (error);
 SMB_LOCK();
 *ssdp = sdp;
 ssp = sdp->sd_share;
 if (ssp == ((void*)0)) {
  SMB_UNLOCK();
  return (ENOTCONN);
 }
 error = smb_share_get(ssp, scred);
 if (error == 0) {
  sdp->refcount++;
  *sspp = ssp;
 }
 SMB_UNLOCK();
 return error;
}
