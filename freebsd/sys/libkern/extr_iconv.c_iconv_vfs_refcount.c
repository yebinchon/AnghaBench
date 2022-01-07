
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsconf {scalar_t__ vfc_refcount; } ;


 int EBUSY ;
 struct vfsconf* vfs_byname (char const*) ;

int
iconv_vfs_refcount(const char *fsname)
{
 struct vfsconf *vfsp;

 vfsp = vfs_byname(fsname);
 if (vfsp != ((void*)0) && vfsp->vfc_refcount > 0)
  return (EBUSY);
 return (0);
}
