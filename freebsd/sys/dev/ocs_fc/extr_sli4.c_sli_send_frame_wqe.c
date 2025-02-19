
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef void* uint8_t ;
typedef void* uint32_t ;
typedef void* uint16_t ;
typedef int sli4_t ;
struct TYPE_7__ {int buffer_address_high; int buffer_address_low; } ;
struct TYPE_8__ {TYPE_1__ data; } ;
struct TYPE_9__ {TYPE_2__ u; void* buffer_length; } ;
struct TYPE_10__ {int lenloc; int xbl; int cq_id; int cmd_type; scalar_t__ xc; scalar_t__ qosd; void* sof; void* eof; void* request_tag; void* timer; int class; int command; scalar_t__ ct; scalar_t__ context_tag; scalar_t__ pu; void* xri_tag; void* frame_length; void** fc_header_2_5; void** fc_header_0_1; TYPE_3__ bde; int dbde; } ;
typedef TYPE_4__ sli4_send_frame_wqe_t ;
struct TYPE_11__ {int phys; } ;
typedef TYPE_5__ ocs_dma_t ;
typedef int int32_t ;


 int SLI4_CMD_SEND_FRAME_WQE ;
 int SLI4_ELS_REQUEST64_CLASS_3 ;
 int SLI4_WQE_SEND_FRAME ;
 int TRUE ;
 int ocs_addr32_hi (int ) ;
 int ocs_addr32_lo (int ) ;
 int ocs_memset (void*,int ,size_t) ;

int32_t
sli_send_frame_wqe(sli4_t *sli4, void *buf, size_t size, uint8_t sof, uint8_t eof, uint32_t *hdr,
     ocs_dma_t *payload, uint32_t req_len, uint8_t timeout,
     uint16_t xri, uint16_t req_tag)
{
 sli4_send_frame_wqe_t *sf = buf;

 ocs_memset(buf, 0, size);

 sf->dbde = TRUE;
 sf->bde.buffer_length = req_len;
 sf->bde.u.data.buffer_address_low = ocs_addr32_lo(payload->phys);
 sf->bde.u.data.buffer_address_high = ocs_addr32_hi(payload->phys);


 sf->fc_header_0_1[0] = hdr[0];
 sf->fc_header_0_1[1] = hdr[1];
 sf->fc_header_2_5[0] = hdr[2];
 sf->fc_header_2_5[1] = hdr[3];
 sf->fc_header_2_5[2] = hdr[4];
 sf->fc_header_2_5[3] = hdr[5];

 sf->frame_length = req_len;

 sf->xri_tag = xri;
 sf->pu = 0;
 sf->context_tag = 0;


 sf->ct = 0;
 sf->command = SLI4_WQE_SEND_FRAME;
 sf->class = SLI4_ELS_REQUEST64_CLASS_3;
 sf->timer = timeout;

 sf->request_tag = req_tag;
 sf->eof = eof;
 sf->sof = sof;

 sf->qosd = 0;
 sf->lenloc = 1;
 sf->xc = 0;

 sf->xbl = 1;

 sf->cmd_type = SLI4_CMD_SEND_FRAME_WQE;
 sf->cq_id = 0xffff;

 return 0;
}
