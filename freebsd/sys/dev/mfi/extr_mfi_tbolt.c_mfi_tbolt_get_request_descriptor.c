
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union mfi_mpi2_request_descriptor {int dummy; } mfi_mpi2_request_descriptor ;
typedef int uint8_t ;
typedef int uint16_t ;
struct mfi_softc {int mfi_max_fw_cmds; int * request_desc_pool; int mfi_dev; } ;


 int device_printf (int ,char*,int) ;
 int memset (int *,int ,int) ;

union mfi_mpi2_request_descriptor *
mfi_tbolt_get_request_descriptor(struct mfi_softc *sc, uint16_t index)
{
 uint8_t *p;

 if (index >= sc->mfi_max_fw_cmds) {
  device_printf(sc->mfi_dev, "Invalid SMID (0x%x)request "
      "for descriptor\n", index);
  return ((void*)0);
 }
 p = sc->request_desc_pool + sizeof(union mfi_mpi2_request_descriptor)
     * index;
 memset(p, 0, sizeof(union mfi_mpi2_request_descriptor));
 return (union mfi_mpi2_request_descriptor *)p;
}
