
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct devfs_mount {struct devfs_dirent* dm_rootdir; int dm_lock; } ;
struct devfs_dirent {TYPE_1__* de_dirent; } ;
struct componentname {int cn_namelen; int cn_nameptr; } ;
struct TYPE_2__ {int d_namlen; int d_name; } ;


 int SA_LOCKED ;
 int SPECNAMELEN ;
 int bcopy (int ,char*,int) ;
 struct devfs_dirent* devfs_parent_dirent (struct devfs_dirent*) ;
 int sx_assert (int *,int ) ;

char *
devfs_fqpn(char *buf, struct devfs_mount *dmp, struct devfs_dirent *dd,
    struct componentname *cnp)
{
 int i;
 struct devfs_dirent *de;

 sx_assert(&dmp->dm_lock, SA_LOCKED);

 i = SPECNAMELEN;
 buf[i] = '\0';
 if (cnp != ((void*)0))
  i -= cnp->cn_namelen;
 if (i < 0)
   return (((void*)0));
 if (cnp != ((void*)0))
  bcopy(cnp->cn_nameptr, buf + i, cnp->cn_namelen);
 de = dd;
 while (de != dmp->dm_rootdir) {
  if (cnp != ((void*)0) || i < SPECNAMELEN) {
   i--;
   if (i < 0)
     return (((void*)0));
   buf[i] = '/';
  }
  i -= de->de_dirent->d_namlen;
  if (i < 0)
    return (((void*)0));
  bcopy(de->de_dirent->d_name, buf + i,
      de->de_dirent->d_namlen);
  de = devfs_parent_dirent(de);
  if (de == ((void*)0))
   return (((void*)0));
 }
 return (buf + i);
}
