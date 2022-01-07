
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef scalar_t__ uint32_t ;
struct mpr_softc {TYPE_1__* fw_diag_buffer_list; } ;
struct TYPE_2__ {scalar_t__ unique_id; } ;


 size_t MPI2_DIAG_BUF_TYPE_COUNT ;
 size_t MPR_FW_DIAGNOSTIC_UID_NOT_FOUND ;

__attribute__((used)) static uint8_t
mpr_get_fw_diag_buffer_number(struct mpr_softc *sc, uint32_t unique_id)
{
 uint8_t index;

 for (index = 0; index < MPI2_DIAG_BUF_TYPE_COUNT; index++) {
  if (sc->fw_diag_buffer_list[index].unique_id == unique_id) {
   return (index);
  }
 }

 return (MPR_FW_DIAGNOSTIC_UID_NOT_FOUND);
}
