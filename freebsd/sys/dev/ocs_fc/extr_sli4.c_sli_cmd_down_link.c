
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sli4_t ;
struct TYPE_2__ {int command; } ;
typedef TYPE_1__ sli4_mbox_command_header_t ;
typedef int int32_t ;


 int SLI4_MBOX_COMMAND_DOWN_LINK ;
 int ocs_memset (void*,int ,size_t) ;

int32_t
sli_cmd_down_link(sli4_t *sli4, void *buf, size_t size)
{
 sli4_mbox_command_header_t *hdr = buf;

 ocs_memset(buf, 0, size);

 hdr->command = SLI4_MBOX_COMMAND_DOWN_LINK;



 return sizeof(sli4_mbox_command_header_t);
}
