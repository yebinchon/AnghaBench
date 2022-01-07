
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {TYPE_2__* op_ob_q; } ;
typedef TYPE_4__ pqisrc_softstate_t ;
struct TYPE_14__ {int type; scalar_t__ zero; int length; int addr; } ;
struct TYPE_12__ {int comp_feature; scalar_t__ iu_length; } ;
struct TYPE_16__ {TYPE_3__ sg_desc; int buffer_length; int response_queue_id; TYPE_1__ header; } ;
typedef TYPE_5__ pqi_event_config_request_t ;
struct TYPE_17__ {int size; int dma_addr; } ;
typedef TYPE_6__ dma_mem_t ;
struct TYPE_13__ {int q_id; } ;


 int DBG_FUNC (char*) ;
 scalar_t__ PQI_REQUEST_HEADER_LENGTH ;
 int PQI_STATUS_SUCCESS ;
 int SGL_DESCRIPTOR_CODE_LAST_ALTERNATIVE_SGL_SEGMENT ;
 int pqisrc_submit_management_req (TYPE_4__*,TYPE_5__*) ;

__attribute__((used)) static int
pqi_event_configure(pqisrc_softstate_t *softs ,
                              pqi_event_config_request_t *request,
                              dma_mem_t *buff)
{
        int ret = PQI_STATUS_SUCCESS;

 DBG_FUNC(" IN\n");

 request->header.comp_feature = 0x00;
 request->header.iu_length = sizeof(pqi_event_config_request_t) -
      PQI_REQUEST_HEADER_LENGTH;


 request->response_queue_id = softs->op_ob_q[0].q_id;
 request->buffer_length = buff->size;
 request->sg_desc.addr = buff->dma_addr;
 request->sg_desc.length = buff->size;
 request->sg_desc.zero = 0;
 request->sg_desc.type = SGL_DESCRIPTOR_CODE_LAST_ALTERNATIVE_SGL_SEGMENT;


 ret = pqisrc_submit_management_req(softs,request);
 if(ret)
  goto err_out;


 DBG_FUNC(" OUT\n");
 return ret;

err_out:
 DBG_FUNC("Failed OUT\n");
 return ret;
}
