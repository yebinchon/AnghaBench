
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cdev_privdata {int cdpd_data; int (* cdpd_dtr ) (int ) ;TYPE_1__* cdpd_fp; } ;
struct TYPE_2__ {struct cdev_privdata* f_cdevpriv; } ;


 int KASSERT (int,char*) ;
 int LIST_REMOVE (struct cdev_privdata*,int ) ;
 int MA_OWNED ;
 int M_CDEVPDATA ;
 int cdevpriv_mtx ;
 int cdpd_list ;
 int free (struct cdev_privdata*,int ) ;
 int mtx_assert (int *,int ) ;
 int mtx_unlock (int *) ;
 int stub1 (int ) ;

void
devfs_destroy_cdevpriv(struct cdev_privdata *p)
{

 mtx_assert(&cdevpriv_mtx, MA_OWNED);
 KASSERT(p->cdpd_fp->f_cdevpriv == p,
     ("devfs_destoy_cdevpriv %p != %p", p->cdpd_fp->f_cdevpriv, p));
 p->cdpd_fp->f_cdevpriv = ((void*)0);
 LIST_REMOVE(p, cdpd_list);
 mtx_unlock(&cdevpriv_mtx);
 (p->cdpd_dtr)(p->cdpd_data);
 free(p, M_CDEVPDATA);
}
