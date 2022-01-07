
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ioctl_dev; } ;
typedef TYPE_1__ qla_host_t ;


 int destroy_dev (int *) ;

void
qla_del_cdev(qla_host_t *ha)
{
 if (ha->ioctl_dev != ((void*)0))
  destroy_dev(ha->ioctl_dev);
 return;
}
