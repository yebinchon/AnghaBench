
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct fsl_sata_channel {int path; int dev; int r_mem; } ;
struct cam_path {int dummy; } ;


 int AC_SCSI_AEN ;
 int ATA_OUTL (int ,int ,int) ;
 scalar_t__ CAM_REQ_CMP ;
 int FSL_SATA_P_SNTF ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*,int) ;
 int xpt_async (int ,struct cam_path*,int *) ;
 scalar_t__ xpt_create_path (struct cam_path**,int *,int ,int,int ) ;
 int xpt_free_path (struct cam_path*) ;
 int xpt_path_path_id (int ) ;

__attribute__((used)) static void
fsl_sata_notify_events(struct fsl_sata_channel *ch, u_int32_t status)
{
 struct cam_path *dpath;
 int i;

 ATA_OUTL(ch->r_mem, FSL_SATA_P_SNTF, status);
 if (bootverbose)
  device_printf(ch->dev, "SNTF 0x%04x\n", status);
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
