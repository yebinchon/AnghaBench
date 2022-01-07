
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {struct label* cr_label; } ;
struct mount {int dummy; } ;
struct label {int dummy; } ;
struct devfs_dirent {int dummy; } ;
struct cdev {int dummy; } ;


 int COUNTER_INC (int ) ;
 int LABEL_CHECK (struct label*,int ) ;
 int MAGIC_CRED ;
 int MAGIC_DEVFS ;
 int devfs_create_device ;

__attribute__((used)) static void
test_devfs_create_device(struct ucred *cred, struct mount *mp,
    struct cdev *dev, struct devfs_dirent *de, struct label *delabel)
{

 if (cred != ((void*)0))
  LABEL_CHECK(cred->cr_label, MAGIC_CRED);
 LABEL_CHECK(delabel, MAGIC_DEVFS);
 COUNTER_INC(devfs_create_device);
}
