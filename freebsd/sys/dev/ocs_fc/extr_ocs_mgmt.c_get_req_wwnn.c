
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ req_wwnn; } ;
typedef TYPE_1__ ocs_xport_t ;
typedef int ocs_textbuf_t ;
struct TYPE_5__ {TYPE_1__* xport; } ;
typedef TYPE_2__ ocs_t ;


 int MGMT_MODE_RW ;
 int ocs_mgmt_emit_int (int *,int ,char*,char*,unsigned long long) ;

__attribute__((used)) static void
get_req_wwnn(ocs_t *ocs, char *name, ocs_textbuf_t *textbuf)
{
 ocs_xport_t *xport = ocs->xport;

 ocs_mgmt_emit_int(textbuf, MGMT_MODE_RW, "requested_wwnn", "0x%llx", (unsigned long long)xport->req_wwnn);
}
