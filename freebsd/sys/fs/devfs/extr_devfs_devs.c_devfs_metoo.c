
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devfs_mount {int dm_idx; } ;
struct devfs_dirent {int dummy; } ;
struct cdev_priv {int cdp_maxdirent; struct devfs_dirent** cdp_dirents; } ;


 int M_DEVFS2 ;
 int M_WAITOK ;
 int M_ZERO ;
 int dev_lock () ;
 int dev_unlock () ;
 int free (struct devfs_dirent**,int ) ;
 struct devfs_dirent** malloc (int,int ,int) ;
 int memcpy (struct devfs_dirent**,struct devfs_dirent**,int) ;

__attribute__((used)) static void
devfs_metoo(struct cdev_priv *cdp, struct devfs_mount *dm)
{
 struct devfs_dirent **dep;
 int siz;

 siz = (dm->dm_idx + 1) * sizeof *dep;
 dep = malloc(siz, M_DEVFS2, M_WAITOK | M_ZERO);
 dev_lock();
 if (dm->dm_idx <= cdp->cdp_maxdirent) {

  dev_unlock();
  free(dep, M_DEVFS2);
  return;
 }
 memcpy(dep, cdp->cdp_dirents, (cdp->cdp_maxdirent + 1) * sizeof *dep);
 if (cdp->cdp_maxdirent > 0)
  free(cdp->cdp_dirents, M_DEVFS2);
 cdp->cdp_dirents = dep;




 cdp->cdp_maxdirent = dm->dm_idx;
 dev_unlock();
}
