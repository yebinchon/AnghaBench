
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct TYPE_2__ {int size; scalar_t__ context; int result; int flags; int type; } ;
struct hpt_iop_request_set_config {TYPE_1__ header; } ;
struct hpt_iop_hba {int bar0h; int bar0t; } ;


 scalar_t__ BUS_SPACE_RD4_ITL (int ) ;
 int BUS_SPACE_WRT4_ITL (int ,scalar_t__) ;
 scalar_t__ IOPMU_QUEUE_EMPTY ;
 int IOP_REQUEST_FLAG_SYNC_REQUEST ;
 int IOP_REQUEST_TYPE_SET_CONFIG ;
 int IOP_RESULT_PENDING ;
 int KdPrint (char*) ;
 int bus_space_write_region_4 (int ,int ,scalar_t__,scalar_t__*,int) ;
 scalar_t__ hptiop_send_sync_request_itl (struct hpt_iop_hba*,scalar_t__,int) ;
 int inbound_queue ;
 int outbound_queue ;

__attribute__((used)) static int hptiop_set_config_itl(struct hpt_iop_hba *hba,
    struct hpt_iop_request_set_config *config)
{
 u_int32_t req32;

 req32 = BUS_SPACE_RD4_ITL(inbound_queue);

 if (req32 == IOPMU_QUEUE_EMPTY)
  return -1;

 config->header.size = sizeof(struct hpt_iop_request_set_config);
 config->header.type = IOP_REQUEST_TYPE_SET_CONFIG;
 config->header.flags = IOP_REQUEST_FLAG_SYNC_REQUEST;
 config->header.result = IOP_RESULT_PENDING;
 config->header.context = 0;

 bus_space_write_region_4(hba->bar0t, hba->bar0h, req32,
  (u_int32_t *)config,
  sizeof(struct hpt_iop_request_set_config) >> 2);

 if (hptiop_send_sync_request_itl(hba, req32, 20000)) {
  KdPrint(("hptiop: set config send cmd failed"));
  return -1;
 }

 BUS_SPACE_WRT4_ITL(outbound_queue, req32);

 return 0;
}
