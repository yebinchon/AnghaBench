
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {struct cdev_privdata* f_cdevpriv; scalar_t__ f_data; } ;
struct cdev_privdata {struct file* cdpd_fp; int * cdpd_dtr; void* cdpd_data; } ;
struct cdev_priv {int cdp_fdpriv; } ;
struct cdev {int dummy; } ;
typedef int d_priv_dtor_t ;
struct TYPE_2__ {struct file* td_fpop; } ;


 int EBUSY ;
 int ENOENT ;
 int LIST_INSERT_HEAD (int *,struct cdev_privdata*,int ) ;
 int M_CDEVPDATA ;
 int M_WAITOK ;
 struct cdev_priv* cdev2priv (struct cdev*) ;
 int cdevpriv_mtx ;
 int cdpd_list ;
 TYPE_1__* curthread ;
 int free (struct cdev_privdata*,int ) ;
 struct cdev_privdata* malloc (int,int ,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

int
devfs_set_cdevpriv(void *priv, d_priv_dtor_t *priv_dtr)
{
 struct file *fp;
 struct cdev_priv *cdp;
 struct cdev_privdata *p;
 int error;

 fp = curthread->td_fpop;
 if (fp == ((void*)0))
  return (ENOENT);
 cdp = cdev2priv((struct cdev *)fp->f_data);
 p = malloc(sizeof(struct cdev_privdata), M_CDEVPDATA, M_WAITOK);
 p->cdpd_data = priv;
 p->cdpd_dtr = priv_dtr;
 p->cdpd_fp = fp;
 mtx_lock(&cdevpriv_mtx);
 if (fp->f_cdevpriv == ((void*)0)) {
  LIST_INSERT_HEAD(&cdp->cdp_fdpriv, p, cdpd_list);
  fp->f_cdevpriv = p;
  mtx_unlock(&cdevpriv_mtx);
  error = 0;
 } else {
  mtx_unlock(&cdevpriv_mtx);
  free(p, M_CDEVPDATA);
  error = EBUSY;
 }
 return (error);
}
