
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpt_iop_hba {int max_devices; int pciunit; } ;
typedef int device_t ;


 int EBUSY ;
 int IOPMU_INBOUND_MSG0_STOP_BACKGROUND_TASK ;
 scalar_t__ device_get_softc (int ) ;
 int device_printf (int ,char*,int ,int) ;
 int hptiop_lock_adapter (struct hpt_iop_hba*) ;
 scalar_t__ hptiop_os_query_remove_device (struct hpt_iop_hba*,int) ;
 int hptiop_release_resource (struct hpt_iop_hba*) ;
 scalar_t__ hptiop_send_sync_msg (struct hpt_iop_hba*,int ,int) ;
 int hptiop_shutdown (int ) ;
 int hptiop_unlock_adapter (struct hpt_iop_hba*) ;

__attribute__((used)) static int hptiop_detach(device_t dev)
{
 struct hpt_iop_hba * hba = (struct hpt_iop_hba *)device_get_softc(dev);
 int i;
 int error = EBUSY;

 hptiop_lock_adapter(hba);
 for (i = 0; i < hba->max_devices; i++)
  if (hptiop_os_query_remove_device(hba, i)) {
   device_printf(dev, "%d file system is busy. id=%d",
      hba->pciunit, i);
   goto out;
  }

 if ((error = hptiop_shutdown(dev)) != 0)
  goto out;
 if (hptiop_send_sync_msg(hba,
  IOPMU_INBOUND_MSG0_STOP_BACKGROUND_TASK, 60000))
  goto out;
 hptiop_unlock_adapter(hba);

 hptiop_release_resource(hba);
 return (0);
out:
 hptiop_unlock_adapter(hba);
 return error;
}
