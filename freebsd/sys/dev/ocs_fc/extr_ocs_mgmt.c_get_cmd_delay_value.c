
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ocs_textbuf_t ;
struct TYPE_3__ {scalar_t__ delay_value_msec; } ;
typedef TYPE_1__ ocs_t ;


 int MGMT_MODE_RW ;
 int ocs_mgmt_emit_int (int *,int ,char*,char*,unsigned long) ;

__attribute__((used)) static void
get_cmd_delay_value(ocs_t *ocs, char *name, ocs_textbuf_t *textbuf)
{
 ocs_mgmt_emit_int(textbuf, MGMT_MODE_RW, "cmd_delay_value", "%ld", (unsigned long)ocs->delay_value_msec);
}
