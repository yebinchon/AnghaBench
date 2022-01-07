
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsconf {int dummy; } ;


 struct vfsconf* vfs_byname_locked (char const*) ;
 int vfsconf_slock () ;
 int vfsconf_sunlock () ;

struct vfsconf *
vfs_byname(const char *name)
{
 struct vfsconf *vfsp;

 vfsconf_slock();
 vfsp = vfs_byname_locked(name);
 vfsconf_sunlock();
 return (vfsp);
}
