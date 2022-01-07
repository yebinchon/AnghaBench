
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int sli4_t ;
struct TYPE_3__ {int command; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;
typedef TYPE_2__ sli4_cmd_read_nvparms_t ;
typedef int int32_t ;


 int SLI4_MBOX_COMMAND_READ_NVPARMS ;
 int ocs_memset (void*,int ,size_t) ;

int32_t
sli_cmd_read_nvparms(sli4_t *sli4, void *buf, size_t size)
{
 sli4_cmd_read_nvparms_t *read_nvparms = buf;

 ocs_memset(buf, 0, size);

 read_nvparms->hdr.command = SLI4_MBOX_COMMAND_READ_NVPARMS;

 return sizeof(sli4_cmd_read_nvparms_t);
}
