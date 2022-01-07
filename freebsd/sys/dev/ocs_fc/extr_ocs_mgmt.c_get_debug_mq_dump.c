
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ocs_textbuf_t ;
typedef int ocs_t ;


 int MGMT_MODE_RW ;
 int OCS_DEBUG_ENABLE_MQ_DUMP ;
 int ocs_debug_is_enabled (int ) ;
 int ocs_mgmt_emit_boolean (int *,int ,char*,int ) ;

__attribute__((used)) static void
get_debug_mq_dump(ocs_t *ocs, char *name, ocs_textbuf_t *textbuf)
{

 ocs_mgmt_emit_boolean(textbuf, MGMT_MODE_RW, "debug_mq_dump",
  ocs_debug_is_enabled(OCS_DEBUG_ENABLE_MQ_DUMP));
}
