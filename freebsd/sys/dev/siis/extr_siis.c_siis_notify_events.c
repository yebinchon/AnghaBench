
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct siis_channel {int quirks; int path; scalar_t__ pm_present; int r_mem; } ;
struct cam_path {int dummy; } ;
typedef int device_t ;


 int AC_SCSI_AEN ;
 int ATA_INL (int ,int ) ;
 int ATA_OUTL (int ,int ,int) ;
 scalar_t__ CAM_REQ_CMP ;
 int SIIS_P_SNTF ;
 int SIIS_Q_SNTF ;
 scalar_t__ bootverbose ;
 struct siis_channel* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;
 int xpt_async (int ,struct cam_path*,int *) ;
 scalar_t__ xpt_create_path (struct cam_path**,int *,int ,int,int ) ;
 int xpt_free_path (struct cam_path*) ;
 int xpt_path_path_id (int ) ;

__attribute__((used)) static void
siis_notify_events(device_t dev)
{
 struct siis_channel *ch = device_get_softc(dev);
 struct cam_path *dpath;
 u_int32_t status;
 int i;

 if (ch->quirks & SIIS_Q_SNTF) {
  status = ATA_INL(ch->r_mem, SIIS_P_SNTF);
  ATA_OUTL(ch->r_mem, SIIS_P_SNTF, status);
 } else {




  status = (ch->pm_present) ? 0x8000 : 0x0001;
 }
 if (bootverbose)
  device_printf(dev, "SNTF 0x%04x\n", status);
 for (i = 0; i < 16; i++) {
  if ((status & (1 << i)) == 0)
   continue;
  if (xpt_create_path(&dpath, ((void*)0),
      xpt_path_path_id(ch->path), i, 0) == CAM_REQ_CMP) {
   xpt_async(AC_SCSI_AEN, dpath, ((void*)0));
   xpt_free_path(dpath);
  }
 }

}
