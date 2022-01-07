
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int dummy; } ;
struct statfs {int dummy; } ;
struct nameidata {TYPE_1__* ni_vp; } ;
struct mount {int dummy; } ;
typedef enum uio_seg { ____Placeholder_uio_seg } uio_seg ;
struct TYPE_2__ {struct mount* v_mount; } ;


 int AUDITVNODE1 ;
 int FOLLOW ;
 int LOCKLEAF ;
 int LOCKSHARED ;
 int LOOKUP ;
 int NDFREE (struct nameidata*,int ) ;
 int NDF_ONLY_PNBUF ;
 int NDINIT (struct nameidata*,int ,int,int,char const*,struct thread*) ;
 int kern_do_statfs (struct thread*,struct mount*,struct statfs*) ;
 int namei (struct nameidata*) ;
 int vfs_ref (struct mount*) ;
 int vput (TYPE_1__*) ;

int
kern_statfs(struct thread *td, const char *path, enum uio_seg pathseg,
    struct statfs *buf)
{
 struct mount *mp;
 struct nameidata nd;
 int error;

 NDINIT(&nd, LOOKUP, FOLLOW | LOCKSHARED | LOCKLEAF | AUDITVNODE1,
     pathseg, path, td);
 error = namei(&nd);
 if (error != 0)
  return (error);
 mp = nd.ni_vp->v_mount;
 vfs_ref(mp);
 NDFREE(&nd, NDF_ONLY_PNBUF);
 vput(nd.ni_vp);
 return (kern_do_statfs(td, mp, buf));
}
