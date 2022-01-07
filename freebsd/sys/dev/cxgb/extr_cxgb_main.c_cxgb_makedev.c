
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct port_info {TYPE_1__* port_cdev; TYPE_2__* ifp; } ;
struct TYPE_4__ {int if_dunit; } ;
struct TYPE_3__ {void* si_drv1; } ;


 int ENOMEM ;
 int GID_WHEEL ;
 int UID_ROOT ;
 int cxgb_cdevsw ;
 int if_name (TYPE_2__*) ;
 TYPE_1__* make_dev (int *,int ,int ,int ,int,char*,int ) ;

__attribute__((used)) static int
cxgb_makedev(struct port_info *pi)
{

 pi->port_cdev = make_dev(&cxgb_cdevsw, pi->ifp->if_dunit,
     UID_ROOT, GID_WHEEL, 0600, "%s", if_name(pi->ifp));

 if (pi->port_cdev == ((void*)0))
  return (ENOMEM);

 pi->port_cdev->si_drv1 = (void *)pi;

 return (0);
}
