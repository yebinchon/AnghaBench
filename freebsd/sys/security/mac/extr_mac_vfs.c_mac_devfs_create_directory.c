
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {int dummy; } ;
struct devfs_dirent {int de_label; } ;


 int MAC_POLICY_PERFORM_NOSLEEP (int ,struct mount*,char*,int,struct devfs_dirent*,int ) ;
 int devfs_create_directory ;

void
mac_devfs_create_directory(struct mount *mp, char *dirname, int dirnamelen,
    struct devfs_dirent *de)
{

 MAC_POLICY_PERFORM_NOSLEEP(devfs_create_directory, mp, dirname,
     dirnamelen, de, de->de_label);
}
