
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ocs_textbuf_t ;
struct TYPE_3__ {scalar_t__ err_injection; } ;
typedef TYPE_1__ ocs_t ;


 scalar_t__ INJECT_DROP_CMD ;
 int MGMT_MODE_RW ;
 int ocs_mgmt_emit_int (int *,int ,char*,char*,int) ;

__attribute__((used)) static void
get_inject_drop_cmd(ocs_t *ocs, char *name, ocs_textbuf_t *textbuf)
{
 ocs_mgmt_emit_int(textbuf, MGMT_MODE_RW, "inject_drop_cmd", "%d",
   (ocs->err_injection == INJECT_DROP_CMD ? 1:0));
}
