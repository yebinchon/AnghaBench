
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mfi_softc {int mfi_io_lock; int mfi_dev; } ;
struct TYPE_5__ {int device_id; } ;
struct TYPE_6__ {TYPE_2__ v; } ;
struct mfi_pd_info {scalar_t__ fw_state; TYPE_3__ ref; } ;
struct mfi_frame_header {scalar_t__ cmd_status; } ;
struct mfi_command {struct mfi_pd_info* cm_private; TYPE_1__* cm_frame; struct mfi_softc* cm_sc; } ;
typedef int * device_t ;
struct TYPE_4__ {struct mfi_frame_header header; } ;


 int Giant ;
 scalar_t__ MFI_PD_STATE_SYSTEM ;
 scalar_t__ MFI_STAT_OK ;
 int M_MFIBUF ;
 int bus_generic_attach (int ) ;
 int * device_add_child (int ,char*,int) ;
 int device_printf (int ,char*,...) ;
 int device_set_desc (int *,char*) ;
 int device_set_ivars (int *,struct mfi_pd_info*) ;
 int free (struct mfi_pd_info*,int ) ;
 int mfi_release_command (struct mfi_command*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
mfi_add_sys_pd_complete(struct mfi_command *cm)
{
 struct mfi_frame_header *hdr;
 struct mfi_pd_info *pd_info;
 struct mfi_softc *sc;
 device_t child;

 sc = cm->cm_sc;
 hdr = &cm->cm_frame->header;
 pd_info = cm->cm_private;

 if (hdr->cmd_status != MFI_STAT_OK) {
  free(pd_info, M_MFIBUF);
  mfi_release_command(cm);
  return;
 }
 if (pd_info->fw_state != MFI_PD_STATE_SYSTEM) {
  device_printf(sc->mfi_dev, "PD=%x is not SYSTEM PD\n",
      pd_info->ref.v.device_id);
  free(pd_info, M_MFIBUF);
  mfi_release_command(cm);
  return;
 }
 mfi_release_command(cm);

 mtx_unlock(&sc->mfi_io_lock);
 mtx_lock(&Giant);
 if ((child = device_add_child(sc->mfi_dev, "mfisyspd", -1)) == ((void*)0)) {
  device_printf(sc->mfi_dev, "Failed to add system pd\n");
  free(pd_info, M_MFIBUF);
  mtx_unlock(&Giant);
  mtx_lock(&sc->mfi_io_lock);
  return;
 }

 device_set_ivars(child, pd_info);
 device_set_desc(child, "MFI System PD");
 bus_generic_attach(sc->mfi_dev);
 mtx_unlock(&Giant);
 mtx_lock(&sc->mfi_io_lock);
}
