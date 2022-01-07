
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int dummy; } ;
struct cdev {int si_drv1; } ;
typedef TYPE_1__* priv_p ;
struct TYPE_2__ {int ngd_mtx; int flags; } ;


 int DBG ;
 int NGDF_OPEN ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
ngdopen(struct cdev *dev, int flag, int mode, struct thread *td)
{
 priv_p priv = (priv_p )dev->si_drv1;

 DBG;

 mtx_lock(&priv->ngd_mtx);
 priv->flags |= NGDF_OPEN;
 mtx_unlock(&priv->ngd_mtx);

 return(0);
}
