
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {int dummy; } ;
struct label {int dummy; } ;
struct devfs_dirent {int dummy; } ;


 int COUNTER_INC (int ) ;
 int LABEL_CHECK (struct label*,int ) ;
 int MAGIC_DEVFS ;
 int devfs_create_directory ;

__attribute__((used)) static void
test_devfs_create_directory(struct mount *mp, char *dirname,
    int dirnamelen, struct devfs_dirent *de, struct label *delabel)
{

 LABEL_CHECK(delabel, MAGIC_DEVFS);
 COUNTER_INC(devfs_create_directory);
}
