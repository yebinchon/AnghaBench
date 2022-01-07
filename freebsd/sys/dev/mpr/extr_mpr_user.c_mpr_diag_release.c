
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint32_t ;
struct mpr_softc {TYPE_1__* fw_diag_buffer_list; } ;
struct TYPE_5__ {int owned_by_firmware; } ;
typedef TYPE_1__ mpr_fw_diagnostic_buffer_t ;
struct TYPE_6__ {int UniqueId; } ;
typedef TYPE_2__ mpr_fw_diag_release_t ;


 int MPR_DIAG_FAILURE ;
 size_t MPR_FW_DIAGNOSTIC_UID_NOT_FOUND ;
 int MPR_FW_DIAG_ERROR_ALREADY_RELEASED ;
 int MPR_FW_DIAG_ERROR_INVALID_UID ;
 int MPR_FW_DIAG_TYPE_RELEASE ;
 size_t mpr_get_fw_diag_buffer_number (struct mpr_softc*,int ) ;
 int mpr_release_fw_diag_buffer (struct mpr_softc*,TYPE_1__*,int *,int ) ;

__attribute__((used)) static int
mpr_diag_release(struct mpr_softc *sc, mpr_fw_diag_release_t *diag_release,
    uint32_t *return_code)
{
 mpr_fw_diagnostic_buffer_t *pBuffer;
 uint8_t i;
 uint32_t unique_id;
 int status;

 unique_id = diag_release->UniqueId;





 i = mpr_get_fw_diag_buffer_number(sc, unique_id);
 if (i == MPR_FW_DIAGNOSTIC_UID_NOT_FOUND) {
  *return_code = MPR_FW_DIAG_ERROR_INVALID_UID;
  return (MPR_DIAG_FAILURE);
 }

 pBuffer = &sc->fw_diag_buffer_list[i];




 if (!pBuffer->owned_by_firmware) {
  *return_code = MPR_FW_DIAG_ERROR_ALREADY_RELEASED;
  return (MPR_DIAG_FAILURE);
 }




 status = mpr_release_fw_diag_buffer(sc, pBuffer, return_code,
     MPR_FW_DIAG_TYPE_RELEASE);
 return (status);
}
