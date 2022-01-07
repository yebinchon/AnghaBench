
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tw_cli_req_context {int dummy; } ;
struct tw_cli_ctlr_context {int dummy; } ;
struct tw_cl_event_packet {int dummy; } ;
struct tw_cl_ctlr_handle {int dummy; } ;
struct tw_cl_command_packet {int dummy; } ;
typedef int TW_UINT32 ;
typedef scalar_t__ TW_INT32 ;


 int TWA_ALIGNMENT (scalar_t__) ;
 int TWA_SG_ELEMENT_SIZE_FACTOR (scalar_t__) ;
 int TW_CLI_SECTOR_SIZE ;
 scalar_t__ TW_CL_DEVICE_ID_9K ;
 int TW_CL_FALSE ;
 scalar_t__ TW_CL_MAX_SIMULTANEOUS_REQUESTS ;
 int TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR ;
 int TW_CL_SEVERITY_ERROR_STRING ;
 scalar_t__ TW_OSL_EBIG ;
 int tw_cl_create_event (struct tw_cl_ctlr_handle*,int ,int ,int,int,int ,char*,char*,scalar_t__,scalar_t__,scalar_t__) ;

TW_INT32
tw_cl_get_mem_requirements(struct tw_cl_ctlr_handle *ctlr_handle,
 TW_UINT32 flags, TW_INT32 device_id, TW_INT32 max_simult_reqs,
 TW_INT32 max_aens, TW_UINT32 *alignment, TW_UINT32 *sg_size_factor,
 TW_UINT32 *non_dma_mem_size, TW_UINT32 *dma_mem_size
 )
{
 if (device_id == 0)
  device_id = TW_CL_DEVICE_ID_9K;

 if (max_simult_reqs > TW_CL_MAX_SIMULTANEOUS_REQUESTS) {
  tw_cl_create_event(ctlr_handle, TW_CL_FALSE,
   TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR,
   0x1000, 0x1, TW_CL_SEVERITY_ERROR_STRING,
   "Too many simultaneous requests to support!",
   "requested = %d, supported = %d, error = %d\n",
   max_simult_reqs, TW_CL_MAX_SIMULTANEOUS_REQUESTS,
   TW_OSL_EBIG);
  return(TW_OSL_EBIG);
 }

 *alignment = TWA_ALIGNMENT(device_id);
 *sg_size_factor = TWA_SG_ELEMENT_SIZE_FACTOR(device_id);







 *non_dma_mem_size = sizeof(struct tw_cli_ctlr_context) +
  (sizeof(struct tw_cli_req_context) * max_simult_reqs) +
  (sizeof(struct tw_cl_event_packet) * max_aens);
 *dma_mem_size = (sizeof(struct tw_cl_command_packet) *
  (max_simult_reqs)) + (TW_CLI_SECTOR_SIZE);

 return(0);
}
