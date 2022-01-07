
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct thread {int dummy; } ;
struct nameidata {int ni_vp; } ;
typedef enum uio_seg { ____Placeholder_uio_seg } uio_seg ;


 int AUDITVNODE1 ;
 int LOCKLEAF ;
 int LOCKSHARED ;
 int LOOKUP ;
 int NDFREE (struct nameidata*,int ) ;
 int NDF_ONLY_PNBUF ;
 int NDINIT (struct nameidata*,int ,int,int,char const*,struct thread*) ;
 int VOP_PATHCONF (int ,int,long*) ;
 int namei (struct nameidata*) ;
 int vput (int ) ;

int
kern_pathconf(struct thread *td, const char *path, enum uio_seg pathseg,
    int name, u_long flags, long *valuep)
{
 struct nameidata nd;
 int error;

 NDINIT(&nd, LOOKUP, LOCKSHARED | LOCKLEAF | AUDITVNODE1 | flags,
     pathseg, path, td);
 if ((error = namei(&nd)) != 0)
  return (error);
 NDFREE(&nd, NDF_ONLY_PNBUF);

 error = VOP_PATHCONF(nd.ni_vp, name, valuep);
 vput(nd.ni_vp);
 return (error);
}
