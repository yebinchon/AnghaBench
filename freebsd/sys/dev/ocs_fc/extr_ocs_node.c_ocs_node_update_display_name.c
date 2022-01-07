
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef int portid_display ;
struct TYPE_7__ {int display_name; } ;
typedef TYPE_2__ ocs_sport_t ;
struct TYPE_6__ {int fc_id; } ;
struct TYPE_8__ {int display_name; TYPE_2__* sport; TYPE_1__ rnode; } ;
typedef TYPE_3__ ocs_node_t ;


 int ocs_assert (TYPE_2__*) ;
 int ocs_node_fcid_display (int ,char*,int) ;
 int ocs_snprintf (int ,int,char*,int ,char*) ;

void
ocs_node_update_display_name(ocs_node_t *node)
{
 uint32_t port_id = node->rnode.fc_id;
 ocs_sport_t *sport = node->sport;
 char portid_display[16];

 ocs_assert(sport);

 ocs_node_fcid_display(port_id, portid_display, sizeof(portid_display));

 ocs_snprintf(node->display_name, sizeof(node->display_name), "%s.%s", sport->display_name, portid_display);
}
