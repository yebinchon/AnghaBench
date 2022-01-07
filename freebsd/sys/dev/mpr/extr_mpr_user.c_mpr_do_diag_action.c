
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct mpr_softc {int dummy; } ;
struct TYPE_13__ {int BytesToRead; int PtrDataBuffer; } ;
typedef TYPE_1__ mpr_fw_diag_unregister_t ;
typedef TYPE_1__ mpr_fw_diag_release_t ;
typedef TYPE_1__ mpr_fw_diag_register_t ;
typedef TYPE_1__ mpr_fw_diag_query_t ;
typedef TYPE_1__ mpr_diag_read_buffer_t ;
typedef int diag_unregister ;
typedef int diag_release ;
typedef int diag_register ;
typedef int diag_read_buffer ;
typedef int diag_query ;


 int MPR_DIAG_FAILURE ;
 int MPR_DIAG_SUCCESS ;
 int MPR_FW_DIAG_ERROR_INVALID_PARAMETER ;
 int MPR_FW_DIAG_ERROR_SUCCESS ;
 int MPR_FW_DIAG_NEW ;





 int PTRIN (int ) ;
 int copyin (int *,TYPE_1__*,int) ;
 int copyout (TYPE_1__*,int *,int) ;
 int mpr_diag_query (struct mpr_softc*,TYPE_1__*,int*) ;
 int mpr_diag_read_buffer (struct mpr_softc*,TYPE_1__*,int ,int*) ;
 int mpr_diag_register (struct mpr_softc*,TYPE_1__*,int*) ;
 int mpr_diag_release (struct mpr_softc*,TYPE_1__*,int*) ;
 int mpr_diag_unregister (struct mpr_softc*,TYPE_1__*,int*) ;

__attribute__((used)) static int
mpr_do_diag_action(struct mpr_softc *sc, uint32_t action, uint8_t *diag_action,
    uint32_t length, uint32_t *return_code)
{
 mpr_fw_diag_register_t diag_register;
 mpr_fw_diag_unregister_t diag_unregister;
 mpr_fw_diag_query_t diag_query;
 mpr_diag_read_buffer_t diag_read_buffer;
 mpr_fw_diag_release_t diag_release;
 int status = MPR_DIAG_SUCCESS;
 uint32_t original_return_code;

 original_return_code = *return_code;
 *return_code = MPR_FW_DIAG_ERROR_SUCCESS;

 switch (action) {
  case 130:
   if (!length) {
    *return_code =
        MPR_FW_DIAG_ERROR_INVALID_PARAMETER;
    status = MPR_DIAG_FAILURE;
    break;
   }
   if (copyin(diag_action, &diag_register,
       sizeof(diag_register)) != 0)
    return (MPR_DIAG_FAILURE);
   status = mpr_diag_register(sc, &diag_register,
       return_code);
   break;

  case 128:
   if (length < sizeof(diag_unregister)) {
    *return_code =
        MPR_FW_DIAG_ERROR_INVALID_PARAMETER;
    status = MPR_DIAG_FAILURE;
    break;
   }
   if (copyin(diag_action, &diag_unregister,
       sizeof(diag_unregister)) != 0)
    return (MPR_DIAG_FAILURE);
   status = mpr_diag_unregister(sc, &diag_unregister,
       return_code);
   break;

  case 132:
   if (length < sizeof (diag_query)) {
    *return_code =
        MPR_FW_DIAG_ERROR_INVALID_PARAMETER;
    status = MPR_DIAG_FAILURE;
    break;
   }
   if (copyin(diag_action, &diag_query, sizeof(diag_query))
       != 0)
    return (MPR_DIAG_FAILURE);
   status = mpr_diag_query(sc, &diag_query, return_code);
   if (status == MPR_DIAG_SUCCESS)
    if (copyout(&diag_query, diag_action,
        sizeof (diag_query)) != 0)
     return (MPR_DIAG_FAILURE);
   break;

  case 131:
   if (copyin(diag_action, &diag_read_buffer,
       sizeof(diag_read_buffer)) != 0)
    return (MPR_DIAG_FAILURE);
   if (length < diag_read_buffer.BytesToRead) {
    *return_code =
        MPR_FW_DIAG_ERROR_INVALID_PARAMETER;
    status = MPR_DIAG_FAILURE;
    break;
   }
   status = mpr_diag_read_buffer(sc, &diag_read_buffer,
       PTRIN(diag_read_buffer.PtrDataBuffer),
       return_code);
   if (status == MPR_DIAG_SUCCESS) {
    if (copyout(&diag_read_buffer, diag_action,
        sizeof(diag_read_buffer) -
        sizeof(diag_read_buffer.PtrDataBuffer)) !=
        0)
     return (MPR_DIAG_FAILURE);
   }
   break;

  case 129:
   if (length < sizeof(diag_release)) {
    *return_code =
        MPR_FW_DIAG_ERROR_INVALID_PARAMETER;
    status = MPR_DIAG_FAILURE;
    break;
   }
   if (copyin(diag_action, &diag_release,
       sizeof(diag_release)) != 0)
    return (MPR_DIAG_FAILURE);
   status = mpr_diag_release(sc, &diag_release,
       return_code);
   break;

  default:
   *return_code = MPR_FW_DIAG_ERROR_INVALID_PARAMETER;
   status = MPR_DIAG_FAILURE;
   break;
 }

 if ((status == MPR_DIAG_FAILURE) &&
     (original_return_code == MPR_FW_DIAG_NEW) &&
     (*return_code != MPR_FW_DIAG_ERROR_SUCCESS))
  status = MPR_DIAG_SUCCESS;

 return (status);
}
