
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct mount {int dummy; } ;
struct label {int dummy; } ;
struct devfs_dirent {int dummy; } ;
struct cdev {int dummy; } ;



__attribute__((used)) static void
stub_devfs_create_device(struct ucred *cred, struct mount *mp,
    struct cdev *dev, struct devfs_dirent *de, struct label *delabel)
{

}
