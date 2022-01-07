
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devfs_mount {int dummy; } ;
struct devfs_dirent {int dummy; } ;


 int KASSERT (int ,char*) ;
 int SPECNAMELEN ;
 int devfs_dir_unref (char*) ;
 char* devfs_fqpn (char*,struct devfs_mount*,struct devfs_dirent*,int *) ;

void
devfs_dir_unref_de(struct devfs_mount *dm, struct devfs_dirent *de)
{
 char dirname[SPECNAMELEN + 1], *namep;

 namep = devfs_fqpn(dirname, dm, de, ((void*)0));
 KASSERT(namep != ((void*)0), ("devfs_unref_dir_de: NULL namep"));

 devfs_dir_unref(namep);
}
