
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
typedef int sli4_t ;
struct TYPE_3__ {int command; } ;
struct TYPE_4__ {int type; int wki_selection; TYPE_1__ hdr; } ;
typedef TYPE_2__ sli4_cmd_dump4_t ;
typedef int int32_t ;


 int SLI4_MBOX_COMMAND_DUMP ;
 int ocs_memset (void*,int ,size_t) ;

int32_t
sli_cmd_dump_type4(sli4_t *sli4, void *buf, size_t size, uint16_t wki)
{
 sli4_cmd_dump4_t *cmd = buf;

 ocs_memset(buf, 0, size);

 cmd->hdr.command = SLI4_MBOX_COMMAND_DUMP;
 cmd->type = 4;
 cmd->wki_selection = wki;
 return sizeof(sli4_cmd_dump4_t);
}
