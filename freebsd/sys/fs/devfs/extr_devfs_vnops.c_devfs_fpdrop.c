
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct cdev_privdata* f_cdevpriv; } ;
struct cdev_privdata {int dummy; } ;


 int cdevpriv_mtx ;
 int devfs_destroy_cdevpriv (struct cdev_privdata*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
devfs_fpdrop(struct file *fp)
{
 struct cdev_privdata *p;

 mtx_lock(&cdevpriv_mtx);
 if ((p = fp->f_cdevpriv) == ((void*)0)) {
  mtx_unlock(&cdevpriv_mtx);
  return;
 }
 devfs_destroy_cdevpriv(p);
}
