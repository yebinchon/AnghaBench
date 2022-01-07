
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct hpt_iop_ioctl_param {int dummy; } ;
struct hpt_iop_hba {TYPE_1__* ops; } ;
typedef int ioctl_thread_t ;
typedef int ioctl_dev_t ;
typedef scalar_t__ caddr_t ;
struct TYPE_2__ {int (* do_ioctl ) (struct hpt_iop_hba*,struct hpt_iop_ioctl_param*) ;} ;


 int EFAULT ;
 int Giant ;


 struct hpt_iop_hba* hba_from_dev (int ) ;
 int hptiop_rescan_bus (struct hpt_iop_hba*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int stub1 (struct hpt_iop_hba*,struct hpt_iop_ioctl_param*) ;

__attribute__((used)) static int hptiop_ioctl(ioctl_dev_t dev, u_long cmd, caddr_t data,
     int flags, ioctl_thread_t proc)
{
 int ret = EFAULT;
 struct hpt_iop_hba *hba = hba_from_dev(dev);

 mtx_lock(&Giant);

 switch (cmd) {
 case 129:
  ret = hba->ops->do_ioctl(hba,
    (struct hpt_iop_ioctl_param *)data);
  break;
 case 128:
  ret = hptiop_rescan_bus(hba);
  break;
 }

 mtx_unlock(&Giant);

 return ret;
}
