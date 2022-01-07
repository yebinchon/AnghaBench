
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint32_t ;
struct mpr_softc {scalar_t__ fw_diag_buffer; int fw_diag_map; int fw_diag_dmat; TYPE_1__* fw_diag_buffer_list; } ;
struct TYPE_5__ {scalar_t__ size; int owned_by_firmware; scalar_t__ force_release; } ;
typedef TYPE_1__ mpr_fw_diagnostic_buffer_t ;
struct TYPE_6__ {scalar_t__ StartingOffset; scalar_t__ BytesToRead; int Flags; scalar_t__ Status; int UniqueId; } ;
typedef TYPE_2__ mpr_diag_read_buffer_t ;


 int BUS_DMASYNC_POSTREAD ;
 int MPR_DIAG_FAILURE ;
 int MPR_DIAG_SUCCESS ;
 size_t MPR_FW_DIAGNOSTIC_UID_NOT_FOUND ;
 int MPR_FW_DIAG_ERROR_INVALID_PARAMETER ;
 int MPR_FW_DIAG_ERROR_INVALID_UID ;
 int MPR_FW_DIAG_FLAG_FORCE_RELEASE ;
 int MPR_FW_DIAG_FLAG_REREGISTER ;
 int bus_dmamap_sync (int ,int ,int ) ;
 scalar_t__ copyout (size_t*,size_t*,scalar_t__) ;
 size_t mpr_get_fw_diag_buffer_number (struct mpr_softc*,int ) ;
 int mpr_post_fw_diag_buffer (struct mpr_softc*,TYPE_1__*,int *) ;

__attribute__((used)) static int
mpr_diag_read_buffer(struct mpr_softc *sc,
    mpr_diag_read_buffer_t *diag_read_buffer, uint8_t *ioctl_buf,
    uint32_t *return_code)
{
 mpr_fw_diagnostic_buffer_t *pBuffer;
 uint8_t i, *pData;
 uint32_t unique_id;
 int status;

 unique_id = diag_read_buffer->UniqueId;





 i = mpr_get_fw_diag_buffer_number(sc, unique_id);
 if (i == MPR_FW_DIAGNOSTIC_UID_NOT_FOUND) {
  *return_code = MPR_FW_DIAG_ERROR_INVALID_UID;
  return (MPR_DIAG_FAILURE);
 }

 pBuffer = &sc->fw_diag_buffer_list[i];




 if (diag_read_buffer->StartingOffset + diag_read_buffer->BytesToRead >
     pBuffer->size) {
  *return_code = MPR_FW_DIAG_ERROR_INVALID_PARAMETER;
  return (MPR_DIAG_FAILURE);
 }


 bus_dmamap_sync(sc->fw_diag_dmat, sc->fw_diag_map,
     BUS_DMASYNC_POSTREAD);





 pData = (uint8_t *)(sc->fw_diag_buffer +
     diag_read_buffer->StartingOffset);
 if (copyout(pData, ioctl_buf, diag_read_buffer->BytesToRead) != 0)
  return (MPR_DIAG_FAILURE);
 diag_read_buffer->Status = 0;




 if (pBuffer->force_release) {
  diag_read_buffer->Flags |= MPR_FW_DIAG_FLAG_FORCE_RELEASE;
 } else {
  diag_read_buffer->Flags &= ~MPR_FW_DIAG_FLAG_FORCE_RELEASE;
 }





 status = MPR_DIAG_SUCCESS;
 if (!pBuffer->owned_by_firmware) {
  if (diag_read_buffer->Flags & MPR_FW_DIAG_FLAG_REREGISTER) {
   status = mpr_post_fw_diag_buffer(sc, pBuffer,
       return_code);
  }
 }

 return (status);
}
