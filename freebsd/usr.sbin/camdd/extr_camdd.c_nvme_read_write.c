
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct nvme_command {int nsid; int cdw10; int cdw11; int cdw12; int opc; } ;
struct ccb_nvmeio {struct nvme_command cmd; } ;


 int CAM_DIR_IN ;
 int CAM_DIR_OUT ;
 int NVME_OPC_READ ;
 int NVME_OPC_WRITE ;
 int UINT16_MAX ;
 int UINT32_MAX ;
 int cam_fill_nvmeio (struct ccb_nvmeio*,int,void (*) (struct cam_periph*,union ccb*),int ,int *,int,int) ;

void
nvme_read_write(struct ccb_nvmeio *nvmeio, uint32_t retries,
  void (*cbfcnp)(struct cam_periph *, union ccb *),
  uint32_t nsid, int readop, uint64_t lba,
  uint32_t block_count, uint8_t *data_ptr, uint32_t dxfer_len,
  uint32_t timeout)
{
 struct nvme_command *nc = &nvmeio->cmd;

 nc->opc = readop ? NVME_OPC_READ : NVME_OPC_WRITE;

 nc->nsid = nsid;

 nc->cdw10 = lba & UINT32_MAX;
 nc->cdw11 = lba >> 32;


 nc->cdw12 = (block_count - 1) & UINT16_MAX;

 cam_fill_nvmeio(nvmeio,
   retries,
   cbfcnp,
   readop ? CAM_DIR_IN : CAM_DIR_OUT,
   data_ptr,
   dxfer_len,
   timeout);
}
