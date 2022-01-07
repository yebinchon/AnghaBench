
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int sli4_t ;
struct TYPE_3__ {int command; } ;
struct TYPE_4__ {int max_burst_len; TYPE_1__ hdr; } ;
typedef TYPE_2__ sli4_cmd_config_auto_xfer_rdy_t ;
typedef int int32_t ;


 int SLI4_MBOX_COMMAND_CONFIG_AUTO_XFER_RDY ;
 int ocs_memset (void*,int ,size_t) ;

int32_t
sli_cmd_config_auto_xfer_rdy(sli4_t *sli4, void *buf, size_t size, uint32_t max_burst_len)
{
 sli4_cmd_config_auto_xfer_rdy_t *req = buf;

 if (!sli4 || !buf) {
  return 0;
 }

 ocs_memset(buf, 0, size);

 req->hdr.command = SLI4_MBOX_COMMAND_CONFIG_AUTO_XFER_RDY;
 req->max_burst_len = max_burst_len;

 return sizeof(sli4_cmd_config_auto_xfer_rdy_t);
}
