
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef void* u32 ;
typedef int u16 ;
struct mbox_cmd_log {int cursor; unsigned int size; } ;
struct mbox_cmd {scalar_t__ timestamp; int* cmd; } ;
struct cudbg_mbox_log {void** lo; void** hi; int entry; } ;
struct cudbg_init {int (* print ) (char*) ;scalar_t__ verbose; TYPE_3__* dbg_params; } ;
struct cudbg_error {int dummy; } ;
struct cudbg_buffer {scalar_t__ data; void* size; } ;
struct TYPE_4__ {int mbox_cmds; struct mbox_cmd_log* log; } ;
struct TYPE_5__ {TYPE_1__ mboxlog_param; } ;
struct TYPE_6__ {TYPE_2__ u; } ;


 size_t CUDBG_MBOX_LOG_PARAM ;
 int CUDBG_STATUS_ENTITY_NOT_REQUESTED ;
 int EDOOFUS ;
 int MBOX_LEN ;
 int compress_buff (struct cudbg_buffer*,struct cudbg_buffer*) ;
 int get_scratch_buff (struct cudbg_buffer*,void*,struct cudbg_buffer*) ;
 struct mbox_cmd* mbox_cmd_log_entry (struct mbox_cmd_log*,unsigned int) ;
 int memcpy (int *,struct mbox_cmd*,int) ;
 int release_scratch_buff (struct cudbg_buffer*,struct cudbg_buffer*) ;
 int stub1 (char*) ;
 int write_compression_hdr (struct cudbg_buffer*,struct cudbg_buffer*) ;

__attribute__((used)) static int collect_mbox_log(struct cudbg_init *pdbg_init,
       struct cudbg_buffer *dbg_buff,
       struct cudbg_error *cudbg_err)
{
 return (EDOOFUS);
}
