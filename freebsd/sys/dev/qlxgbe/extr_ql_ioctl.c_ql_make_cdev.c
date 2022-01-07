
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_3__* ioctl_dev; TYPE_4__* ifp; } ;
typedef TYPE_1__ qla_host_t ;
struct TYPE_7__ {int if_dunit; } ;
struct TYPE_6__ {TYPE_1__* si_drv1; } ;


 int GID_WHEEL ;
 int UID_ROOT ;
 int if_name (TYPE_4__*) ;
 TYPE_3__* make_dev (int *,int ,int ,int ,int,char*,int ) ;
 int qla_cdevsw ;

int
ql_make_cdev(qla_host_t *ha)
{
        ha->ioctl_dev = make_dev(&qla_cdevsw,
    ha->ifp->if_dunit,
                                UID_ROOT,
                                GID_WHEEL,
                                0600,
                                "%s",
                                if_name(ha->ifp));

 if (ha->ioctl_dev == ((void*)0))
  return (-1);

        ha->ioctl_dev->si_drv1 = ha;

 return (0);
}
