
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint8_t ;
typedef int sli4_t ;
struct TYPE_3__ {int command; } ;
struct TYPE_4__ {void* clof; void* clrc; void* rec; TYPE_1__ hdr; } ;
typedef TYPE_2__ sli4_cmd_read_link_stats_t ;
typedef int int32_t ;


 int SLI4_MBOX_COMMAND_READ_LNK_STAT ;
 int ocs_memset (void*,int ,size_t) ;

int32_t
sli_cmd_read_link_stats(sli4_t *sli4, void *buf, size_t size,
   uint8_t req_ext_counters,
   uint8_t clear_overflow_flags,
   uint8_t clear_all_counters)
{
 sli4_cmd_read_link_stats_t *cmd = buf;

 ocs_memset(buf, 0, size);

 cmd->hdr.command = SLI4_MBOX_COMMAND_READ_LNK_STAT;
 cmd->rec = req_ext_counters;
 cmd->clrc = clear_all_counters;
 cmd->clof = clear_overflow_flags;
 return sizeof(sli4_cmd_read_link_stats_t);
}
