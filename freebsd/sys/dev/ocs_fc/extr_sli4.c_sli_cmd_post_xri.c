
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* uint16_t ;
struct TYPE_7__ {scalar_t__ auto_xfer_rdy; } ;
struct TYPE_8__ {TYPE_2__ config; } ;
typedef TYPE_3__ sli4_t ;
struct TYPE_6__ {int command; } ;
struct TYPE_9__ {void* val; void* enx; void* xri_count; void* xri_base; TYPE_1__ hdr; } ;
typedef TYPE_4__ sli4_cmd_post_xri_t ;
typedef int int32_t ;


 int SLI4_MBOX_COMMAND_POST_XRI ;
 void* TRUE ;
 int ocs_memset (void*,int ,size_t) ;

int32_t
sli_cmd_post_xri(sli4_t *sli4, void *buf, size_t size, uint16_t xri_base, uint16_t xri_count)
{
 sli4_cmd_post_xri_t *post_xri = buf;

 ocs_memset(buf, 0, size);

 post_xri->hdr.command = SLI4_MBOX_COMMAND_POST_XRI;
 post_xri->xri_base = xri_base;
 post_xri->xri_count = xri_count;

 if (sli4->config.auto_xfer_rdy == 0) {
  post_xri->enx = TRUE;
  post_xri->val = TRUE;
 }

 return sizeof(sli4_cmd_post_xri_t);
}
