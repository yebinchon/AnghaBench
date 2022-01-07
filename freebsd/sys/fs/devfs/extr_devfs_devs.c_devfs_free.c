
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdev_priv {scalar_t__ cdp_maxdirent; struct cdev_priv* cdp_dirents; int cdp_inode; } ;
struct cdev {int * si_cred; } ;


 int M_CDEVP ;
 int M_DEVFS2 ;
 struct cdev_priv* cdev2priv (struct cdev*) ;
 int crfree (int *) ;
 int devfs_free_cdp_inode (int ) ;
 int free (struct cdev_priv*,int ) ;

void
devfs_free(struct cdev *cdev)
{
 struct cdev_priv *cdp;

 cdp = cdev2priv(cdev);
 if (cdev->si_cred != ((void*)0))
  crfree(cdev->si_cred);
 devfs_free_cdp_inode(cdp->cdp_inode);
 if (cdp->cdp_maxdirent > 0)
  free(cdp->cdp_dirents, M_DEVFS2);
 free(cdp, M_CDEVP);
}
