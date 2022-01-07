
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct nameidata {int ni_vp; } ;
typedef enum uio_seg { ____Placeholder_uio_seg } uio_seg ;


 int AUDITVNODE1 ;
 int FOLLOW ;
 int LOCKLEAF ;
 int LOCKSHARED ;
 int LOOKUP ;
 int NDFREE (struct nameidata*,int ) ;
 int NDF_ONLY_PNBUF ;
 int NDINIT (struct nameidata*,int ,int,int,char const*,struct thread*) ;
 int VOP_UNLOCK (int ,int ) ;
 int change_dir (int ,struct thread*) ;
 int namei (struct nameidata*) ;
 int pwd_chdir (struct thread*,int ) ;
 int vput (int ) ;

int
kern_chdir(struct thread *td, const char *path, enum uio_seg pathseg)
{
 struct nameidata nd;
 int error;

 NDINIT(&nd, LOOKUP, FOLLOW | LOCKSHARED | LOCKLEAF | AUDITVNODE1,
     pathseg, path, td);
 if ((error = namei(&nd)) != 0)
  return (error);
 if ((error = change_dir(nd.ni_vp, td)) != 0) {
  vput(nd.ni_vp);
  NDFREE(&nd, NDF_ONLY_PNBUF);
  return (error);
 }
 VOP_UNLOCK(nd.ni_vp, 0);
 NDFREE(&nd, NDF_ONLY_PNBUF);
 pwd_chdir(td, nd.ni_vp);
 return (0);
}
