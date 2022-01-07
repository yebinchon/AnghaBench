
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ocs_textbuf_t ;
struct TYPE_3__ {int cmd_err_inject; } ;
typedef TYPE_1__ ocs_t ;


 int MGMT_MODE_RW ;
 int ocs_mgmt_emit_int (int *,int ,char*,char*,int ) ;

__attribute__((used)) static void
get_cmd_err_inject(ocs_t *ocs, char *name, ocs_textbuf_t *textbuf)
{
 ocs_mgmt_emit_int(textbuf, MGMT_MODE_RW, "cmd_err_inject", "0x%02x", ocs->cmd_err_inject);
}
