
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct tpm_sc {int interrupts; int transmit; int dev; int * mem_res; scalar_t__ mem_rid; } ;
struct tpmcrb_sc {int rsp_off; int cmd_off; scalar_t__ cmd_buf_size; scalar_t__ rsp_buf_size; struct tpm_sc base; } ;
typedef int device_t ;
typedef int ACPI_STATUS ;
typedef int ACPI_HANDLE ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int AND4 (struct tpm_sc*,int ,int ) ;
 int AcpiWalkResources (int ,char*,int ,void*) ;
 int ENXIO ;
 void* RD4 (struct tpm_sc*,int ) ;
 int RD8 (struct tpm_sc*,int ) ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int TPM_CRB_CTRL_CMD_HADDR ;
 int TPM_CRB_CTRL_CMD_LADDR ;
 int TPM_CRB_CTRL_CMD_SIZE ;
 int TPM_CRB_CTRL_RSP_ADDR ;
 int TPM_CRB_CTRL_RSP_HADDR ;
 int TPM_CRB_CTRL_RSP_SIZE ;
 int TPM_CRB_INT_ENABLE ;
 int TPM_CRB_INT_ENABLE_BIT ;
 int acpi_get_handle (int ) ;
 int * bus_alloc_resource_any (int ,int ,scalar_t__*,int ) ;
 int bus_release_resource (int ,int ,scalar_t__,int *) ;
 struct tpmcrb_sc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int tpm20_init (struct tpm_sc*) ;
 int tpmcrb_detach (int ) ;
 int tpmcrb_fix_buff_offsets ;
 int tpmcrb_relinquish_locality (struct tpm_sc*) ;
 int tpmcrb_request_locality (struct tpm_sc*,int ) ;
 int tpmcrb_transmit ;

__attribute__((used)) static int
tpmcrb_attach(device_t dev)
{
 struct tpmcrb_sc *crb_sc;
 struct tpm_sc *sc;
 ACPI_HANDLE handle;
 ACPI_STATUS status;
 int result;

 crb_sc = device_get_softc(dev);
 sc = &crb_sc->base;
 handle = acpi_get_handle(dev);

 sc->dev = dev;

 sc->mem_rid = 0;
 sc->mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &sc->mem_rid,
          RF_ACTIVE);
 if (sc->mem_res == ((void*)0))
  return (ENXIO);

 if(!tpmcrb_request_locality(sc, 0)) {
  bus_release_resource(dev, SYS_RES_MEMORY,
      sc->mem_rid, sc->mem_res);
  return (ENXIO);
 }





 AND4(sc, TPM_CRB_INT_ENABLE, ~TPM_CRB_INT_ENABLE_BIT);
 sc->interrupts = 0;
 crb_sc->rsp_off = RD8(sc, TPM_CRB_CTRL_RSP_ADDR);




 crb_sc->cmd_off = RD4(sc, TPM_CRB_CTRL_CMD_LADDR);
 crb_sc->cmd_off |= ((uint64_t) RD4(sc, TPM_CRB_CTRL_CMD_HADDR) << 32);
 crb_sc->cmd_buf_size = RD4(sc, TPM_CRB_CTRL_CMD_SIZE);
 crb_sc->rsp_buf_size = RD4(sc, TPM_CRB_CTRL_RSP_SIZE);

 tpmcrb_relinquish_locality(sc);


 status = AcpiWalkResources(handle, "_CRS", tpmcrb_fix_buff_offsets,
      (void *)crb_sc);
 if (ACPI_FAILURE(status)) {
  tpmcrb_detach(dev);
  return (ENXIO);
 }

 if (crb_sc->rsp_off == crb_sc->cmd_off) {




  if (crb_sc->cmd_buf_size != crb_sc->rsp_buf_size) {
   device_printf(sc->dev,
       "Overlapping Tx/Rx buffers have different sizes\n");
   tpmcrb_detach(dev);
   return (ENXIO);
  }
 }

 sc->transmit = tpmcrb_transmit;

 result = tpm20_init(sc);
 if (result != 0)
  tpmcrb_detach(dev);

 return (result);
}
