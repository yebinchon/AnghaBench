
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mfi_softc {int mfi_dev; int mfi_ld_pend_tqh; int mfi_io_lock; } ;
struct TYPE_5__ {int isSSCD; } ;
struct TYPE_6__ {TYPE_2__ params; } ;
struct mfi_ld_info {TYPE_3__ ld_config; } ;
struct mfi_disk_pending {int ld_id; } ;
struct mfi_dcmd_frame {int* mbox; } ;
struct mfi_command {TYPE_1__* cm_frame; int cm_flags; } ;
struct TYPE_4__ {struct mfi_dcmd_frame dcmd; } ;


 int MA_OWNED ;
 int MFI_CMD_DATAIN ;
 int MFI_DCMD_LD_GET_INFO ;
 int M_MFIBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int TAILQ_INSERT_TAIL (int *,struct mfi_disk_pending*,int ) ;
 int device_printf (int ,char*,int) ;
 int free (struct mfi_ld_info*,int ) ;
 int ld_link ;
 struct mfi_disk_pending* malloc (int,int ,int) ;
 int mfi_add_ld_complete (struct mfi_command*) ;
 int mfi_dcmd_command (struct mfi_softc*,struct mfi_command**,int ,void**,int) ;
 int mfi_release_command (struct mfi_command*) ;
 scalar_t__ mfi_wait_command (struct mfi_softc*,struct mfi_command*) ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static int
mfi_add_ld(struct mfi_softc *sc, int id)
{
 struct mfi_command *cm;
 struct mfi_dcmd_frame *dcmd = ((void*)0);
 struct mfi_ld_info *ld_info = ((void*)0);
 struct mfi_disk_pending *ld_pend;
 int error;

 mtx_assert(&sc->mfi_io_lock, MA_OWNED);

 ld_pend = malloc(sizeof(*ld_pend), M_MFIBUF, M_NOWAIT | M_ZERO);
 if (ld_pend != ((void*)0)) {
  ld_pend->ld_id = id;
  TAILQ_INSERT_TAIL(&sc->mfi_ld_pend_tqh, ld_pend, ld_link);
 }

 error = mfi_dcmd_command(sc, &cm, MFI_DCMD_LD_GET_INFO,
     (void **)&ld_info, sizeof(*ld_info));
 if (error) {
  device_printf(sc->mfi_dev,
      "Failed to allocate for MFI_DCMD_LD_GET_INFO %d\n", error);
  if (ld_info)
   free(ld_info, M_MFIBUF);
  return (error);
 }
 cm->cm_flags = MFI_CMD_DATAIN;
 dcmd = &cm->cm_frame->dcmd;
 dcmd->mbox[0] = id;
 if (mfi_wait_command(sc, cm) != 0) {
  device_printf(sc->mfi_dev,
      "Failed to get logical drive: %d\n", id);
  free(ld_info, M_MFIBUF);
  return (0);
 }
 if (ld_info->ld_config.params.isSSCD != 1)
  mfi_add_ld_complete(cm);
 else {
  mfi_release_command(cm);
  if (ld_info)
   free(ld_info, M_MFIBUF);
 }
 return (0);
}
