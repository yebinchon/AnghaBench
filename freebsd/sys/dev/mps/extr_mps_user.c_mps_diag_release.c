
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint32_t ;
struct mps_softc {TYPE_1__* fw_diag_buffer_list; } ;
struct TYPE_5__ {int owned_by_firmware; } ;
typedef TYPE_1__ mps_fw_diagnostic_buffer_t ;
struct TYPE_6__ {int UniqueId; } ;
typedef TYPE_2__ mps_fw_diag_release_t ;


 int MPS_DIAG_FAILURE ;
 size_t MPS_FW_DIAGNOSTIC_UID_NOT_FOUND ;
 int MPS_FW_DIAG_ERROR_ALREADY_RELEASED ;
 int MPS_FW_DIAG_ERROR_INVALID_UID ;
 int MPS_FW_DIAG_TYPE_RELEASE ;
 size_t mps_get_fw_diag_buffer_number (struct mps_softc*,int ) ;
 int mps_release_fw_diag_buffer (struct mps_softc*,TYPE_1__*,int *,int ) ;

__attribute__((used)) static int
mps_diag_release(struct mps_softc *sc, mps_fw_diag_release_t *diag_release,
    uint32_t *return_code)
{
 mps_fw_diagnostic_buffer_t *pBuffer;
 uint8_t i;
 uint32_t unique_id;
 int status;

 unique_id = diag_release->UniqueId;





 i = mps_get_fw_diag_buffer_number(sc, unique_id);
 if (i == MPS_FW_DIAGNOSTIC_UID_NOT_FOUND) {
  *return_code = MPS_FW_DIAG_ERROR_INVALID_UID;
  return (MPS_DIAG_FAILURE);
 }

 pBuffer = &sc->fw_diag_buffer_list[i];




 if (!pBuffer->owned_by_firmware) {
  *return_code = MPS_FW_DIAG_ERROR_ALREADY_RELEASED;
  return (MPS_DIAG_FAILURE);
 }




 status = mps_release_fw_diag_buffer(sc, pBuffer, return_code,
     MPS_FW_DIAG_TYPE_RELEASE);
 return (status);
}
