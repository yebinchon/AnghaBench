
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mvs_channel {int path; scalar_t__ pm_present; int r_mem; } ;
struct cam_path {int dummy; } ;
typedef int device_t ;


 int AC_SCSI_AEN ;
 int ATA_INL (int ,int ) ;
 scalar_t__ CAM_REQ_CMP ;
 int SATA_FISDW0 ;
 scalar_t__ bootverbose ;
 struct mvs_channel* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;
 int xpt_async (int ,struct cam_path*,int *) ;
 scalar_t__ xpt_create_path (struct cam_path**,int *,int ,int,int ) ;
 int xpt_free_path (struct cam_path*) ;
 int xpt_path_path_id (int ) ;

__attribute__((used)) static void
mvs_notify_events(device_t dev)
{
 struct mvs_channel *ch = device_get_softc(dev);
 struct cam_path *dpath;
 uint32_t fis;
 int d;


 fis = ATA_INL(ch->r_mem, SATA_FISDW0);
 if ((fis & 0x80ff) == 0x80a1)
  d = (fis & 0x0f00) >> 8;
 else
  d = ch->pm_present ? 15 : 0;
 if (bootverbose)
  device_printf(dev, "SNTF %d\n", d);
 if (xpt_create_path(&dpath, ((void*)0),
     xpt_path_path_id(ch->path), d, 0) == CAM_REQ_CMP) {
  xpt_async(AC_SCSI_AEN, dpath, ((void*)0));
  xpt_free_path(dpath);
 }
}
