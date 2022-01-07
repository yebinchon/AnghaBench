
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsconf {int dummy; } ;
struct thread {int dummy; } ;


 int EEXIST ;
 int ENODEV ;
 int LINKER_UNLOAD_FORCE ;
 int kern_kldload (struct thread*,char const*,int*) ;
 int kern_kldunload (struct thread*,int,int ) ;
 struct vfsconf* vfs_byname (char const*) ;

struct vfsconf *
vfs_byname_kld(const char *fstype, struct thread *td, int *error)
{
 struct vfsconf *vfsp;
 int fileid, loaded;

 vfsp = vfs_byname(fstype);
 if (vfsp != ((void*)0))
  return (vfsp);


 *error = kern_kldload(td, fstype, &fileid);
 loaded = (*error == 0);
 if (*error == EEXIST)
  *error = 0;
 if (*error)
  return (((void*)0));


 vfsp = vfs_byname(fstype);
 if (vfsp == ((void*)0)) {
  if (loaded)
   (void)kern_kldunload(td, fileid, LINKER_UNLOAD_FORCE);
  *error = ENODEV;
  return (((void*)0));
 }
 return (vfsp);
}
