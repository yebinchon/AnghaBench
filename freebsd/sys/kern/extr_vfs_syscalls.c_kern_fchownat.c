
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_ucred; } ;
struct nameidata {int ni_vp; } ;
typedef enum uio_seg { ____Placeholder_uio_seg } uio_seg ;


 int AT_BENEATH ;
 int AT_SYMLINK_NOFOLLOW ;
 int AUDITVNODE1 ;
 int AUDIT_ARG_OWNER (int,int) ;
 int BENEATH ;
 int FOLLOW ;
 int LOOKUP ;
 int NDFREE (struct nameidata*,int ) ;
 int NDF_ONLY_PNBUF ;
 int NDINIT_ATRIGHTS (struct nameidata*,int ,int,int,char const*,int,int *,struct thread*) ;
 int NOFOLLOW ;
 int cap_fchown_rights ;
 int namei (struct nameidata*) ;
 int setfown (struct thread*,int ,int ,int,int) ;
 int vrele (int ) ;

int
kern_fchownat(struct thread *td, int fd, const char *path,
    enum uio_seg pathseg, int uid, int gid, int flag)
{
 struct nameidata nd;
 int error, follow;

 AUDIT_ARG_OWNER(uid, gid);
 follow = (flag & AT_SYMLINK_NOFOLLOW) ? NOFOLLOW : FOLLOW;
 follow |= (flag & AT_BENEATH) != 0 ? BENEATH : 0;
 NDINIT_ATRIGHTS(&nd, LOOKUP, follow | AUDITVNODE1, pathseg, path, fd,
     &cap_fchown_rights, td);

 if ((error = namei(&nd)) != 0)
  return (error);
 NDFREE(&nd, NDF_ONLY_PNBUF);
 error = setfown(td, td->td_ucred, nd.ni_vp, uid, gid);
 vrele(nd.ni_vp);
 return (error);
}
