
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct mount {int dummy; } ;
struct devfs_dirent {int de_label; } ;


 int MAC_POLICY_PERFORM_NOSLEEP (int ,struct ucred*,struct mount*,struct devfs_dirent*,int ,struct devfs_dirent*,int ) ;
 int devfs_create_symlink ;

void
mac_devfs_create_symlink(struct ucred *cred, struct mount *mp,
    struct devfs_dirent *dd, struct devfs_dirent *de)
{

 MAC_POLICY_PERFORM_NOSLEEP(devfs_create_symlink, cred, mp, dd,
     dd->de_label, de, de->de_label);
}
