
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint32_t ;
struct mps_softc {scalar_t__ fw_diag_busaddr; int * fw_diag_dmat; int * fw_diag_buffer; int fw_diag_map; TYPE_1__* fw_diag_buffer_list; } ;
struct TYPE_5__ {int unique_id; int owned_by_firmware; } ;
typedef TYPE_1__ mps_fw_diagnostic_buffer_t ;
struct TYPE_6__ {int UniqueId; } ;
typedef TYPE_2__ mps_fw_diag_unregister_t ;


 int MPS_DIAG_FAILURE ;
 int MPS_DIAG_SUCCESS ;
 size_t MPS_FW_DIAGNOSTIC_UID_NOT_FOUND ;
 int MPS_FW_DIAG_ERROR_INVALID_UID ;
 int MPS_FW_DIAG_INVALID_UID ;
 int MPS_FW_DIAG_TYPE_UNREGISTER ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_unload (int *,int ) ;
 int bus_dmamem_free (int *,int *,int ) ;
 size_t mps_get_fw_diag_buffer_number (struct mps_softc*,int ) ;
 int mps_release_fw_diag_buffer (struct mps_softc*,TYPE_1__*,int *,int ) ;

__attribute__((used)) static int
mps_diag_unregister(struct mps_softc *sc,
    mps_fw_diag_unregister_t *diag_unregister, uint32_t *return_code)
{
 mps_fw_diagnostic_buffer_t *pBuffer;
 uint8_t i;
 uint32_t unique_id;
 int status;

 unique_id = diag_unregister->UniqueId;





 i = mps_get_fw_diag_buffer_number(sc, unique_id);
 if (i == MPS_FW_DIAGNOSTIC_UID_NOT_FOUND) {
  *return_code = MPS_FW_DIAG_ERROR_INVALID_UID;
  return (MPS_DIAG_FAILURE);
 }

 pBuffer = &sc->fw_diag_buffer_list[i];






 if (!pBuffer->owned_by_firmware) {
  status = MPS_DIAG_SUCCESS;
 } else {
  status = mps_release_fw_diag_buffer(sc, pBuffer, return_code,
      MPS_FW_DIAG_TYPE_UNREGISTER);
 }





 pBuffer->unique_id = MPS_FW_DIAG_INVALID_UID;
 if (status == MPS_DIAG_SUCCESS) {
  if (sc->fw_diag_busaddr != 0) {
   bus_dmamap_unload(sc->fw_diag_dmat, sc->fw_diag_map);
   sc->fw_diag_busaddr = 0;
  }
  if (sc->fw_diag_buffer != ((void*)0)) {
   bus_dmamem_free(sc->fw_diag_dmat, sc->fw_diag_buffer,
       sc->fw_diag_map);
   sc->fw_diag_buffer = ((void*)0);
  }
  if (sc->fw_diag_dmat != ((void*)0)) {
   bus_dma_tag_destroy(sc->fw_diag_dmat);
   sc->fw_diag_dmat = ((void*)0);
  }
 }

 return (status);
}
