
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int available_remote_nodes; } ;
struct TYPE_4__ {scalar_t__ reserved_tci; scalar_t__ reserved_rni; TYPE_3__* owning_controller; } ;
typedef TYPE_1__ SCIC_SDS_PORT_T ;


 scalar_t__ SCU_DUMMY_INDEX ;
 int scic_controller_free_io_tag (TYPE_3__*,scalar_t__) ;
 int scic_sds_remote_node_table_release_remote_node_index (int *,int,scalar_t__) ;

__attribute__((used)) static
void scic_sds_port_destroy_dummy_resources(
   SCIC_SDS_PORT_T * this_port
)
{
   if (this_port->reserved_tci != SCU_DUMMY_INDEX)
   {
      scic_controller_free_io_tag(
         this_port->owning_controller, this_port->reserved_tci
      );
   }

   if (this_port->reserved_rni != SCU_DUMMY_INDEX)
   {
      scic_sds_remote_node_table_release_remote_node_index(
         &this_port->owning_controller->available_remote_nodes, 1, this_port->reserved_rni
      );
   }

   this_port->reserved_rni = SCU_DUMMY_INDEX;
   this_port->reserved_tci = SCU_DUMMY_INDEX;
}
