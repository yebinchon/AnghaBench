
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {int d_namlen; int d_reclen; int d_name; } ;
struct devfs_dirent {int de_links; int de_holdcnt; int de_ctime; int de_atime; int de_mtime; struct dirent* de_dirent; } ;


 int GENERIC_DIRSIZ (struct dirent*) ;
 int M_DEVFS3 ;
 int M_WAITOK ;
 int M_ZERO ;
 int bcopy (char*,int ,int) ;
 int dirent_terminate (struct dirent*) ;
 int mac_devfs_init (struct devfs_dirent*) ;
 struct devfs_dirent* malloc (int,int ,int) ;
 int vfs_timestamp (int *) ;

struct devfs_dirent *
devfs_newdirent(char *name, int namelen)
{
 int i;
 struct devfs_dirent *de;
 struct dirent d;

 d.d_namlen = namelen;
 i = sizeof(*de) + GENERIC_DIRSIZ(&d);
 de = malloc(i, M_DEVFS3, M_WAITOK | M_ZERO);
 de->de_dirent = (struct dirent *)(de + 1);
 de->de_dirent->d_namlen = namelen;
 de->de_dirent->d_reclen = GENERIC_DIRSIZ(&d);
 bcopy(name, de->de_dirent->d_name, namelen);
 dirent_terminate(de->de_dirent);
 vfs_timestamp(&de->de_ctime);
 de->de_mtime = de->de_atime = de->de_ctime;
 de->de_links = 1;
 de->de_holdcnt = 1;



 return (de);
}
