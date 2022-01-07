
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ocs_textbuf_t ;
struct TYPE_7__ {TYPE_2__* domain; } ;
typedef TYPE_3__ ocs_t ;
struct TYPE_6__ {TYPE_1__* sport; scalar_t__ attached; } ;
struct TYPE_5__ {int fc_id; } ;


 int MGMT_MODE_RD ;
 int ocs_mgmt_emit_int (int *,int ,char*,char*,...) ;

__attribute__((used)) static void
get_fcid(ocs_t *ocs, char *name, ocs_textbuf_t *textbuf)
{

 if (ocs->domain && ocs->domain->attached) {
  ocs_mgmt_emit_int(textbuf, MGMT_MODE_RD, "fc_id", "0x%06x",
      ocs->domain->sport->fc_id);
 } else {
  ocs_mgmt_emit_int(textbuf, MGMT_MODE_RD, "fc_id", "UNKNOWN");
 }

}
