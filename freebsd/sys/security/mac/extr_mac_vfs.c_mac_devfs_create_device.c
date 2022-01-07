
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct mount {int dummy; } ;
struct devfs_dirent {int de_label; } ;
struct cdev {int dummy; } ;


 int MAC_POLICY_PERFORM_NOSLEEP (int ,struct ucred*,struct mount*,struct cdev*,struct devfs_dirent*,int ) ;
 int devfs_create_device ;

void
mac_devfs_create_device(struct ucred *cred, struct mount *mp,
    struct cdev *dev, struct devfs_dirent *de)
{

 MAC_POLICY_PERFORM_NOSLEEP(devfs_create_device, cred, mp, dev, de,
     de->de_label);
}
