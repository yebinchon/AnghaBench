
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hpt_iop_hba {int flag; TYPE_1__* ops; int pciunit; } ;
typedef int device_t ;
struct TYPE_2__ {int (* disable_intr ) (struct hpt_iop_hba*) ;} ;


 int EBUSY ;
 int HPT_IOCTL_FLAG_OPEN ;
 int IOPMU_INBOUND_MSG0_SHUTDOWN ;
 scalar_t__ device_get_softc (int ) ;
 int device_printf (int ,char*,int ) ;
 scalar_t__ hptiop_send_sync_msg (struct hpt_iop_hba*,int ,int) ;
 int stub1 (struct hpt_iop_hba*) ;

__attribute__((used)) static int hptiop_shutdown(device_t dev)
{
 struct hpt_iop_hba * hba = (struct hpt_iop_hba *)device_get_softc(dev);

 int error = 0;

 if (hba->flag & HPT_IOCTL_FLAG_OPEN) {
  device_printf(dev, "%d device is busy", hba->pciunit);
  return EBUSY;
 }

 hba->ops->disable_intr(hba);

 if (hptiop_send_sync_msg(hba, IOPMU_INBOUND_MSG0_SHUTDOWN, 60000))
  error = EBUSY;

 return error;
}
