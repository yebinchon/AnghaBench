
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nodes_count; } ;
typedef TYPE_1__ ocs_xport_t ;
typedef int ocs_textbuf_t ;
struct TYPE_5__ {TYPE_1__* xport; } ;
typedef TYPE_2__ ocs_t ;


 int MGMT_MODE_RD ;
 int ocs_mgmt_emit_int (int *,int ,char*,char*,int ) ;

__attribute__((used)) static void
get_nodes_count(ocs_t *ocs, char *name, ocs_textbuf_t *textbuf)
{
 ocs_xport_t *xport = ocs->xport;

 ocs_mgmt_emit_int(textbuf, MGMT_MODE_RD, "nodes_count", "%d", xport->nodes_count);
}
