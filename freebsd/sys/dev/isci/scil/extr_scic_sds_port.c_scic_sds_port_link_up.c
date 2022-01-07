
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int is_in_link_training; } ;
struct TYPE_9__ {TYPE_1__* state_handlers; } ;
struct TYPE_8__ {int (* link_up_handler ) (TYPE_2__*,TYPE_3__*) ;} ;
typedef TYPE_2__ SCIC_SDS_PORT_T ;
typedef TYPE_3__ SCIC_SDS_PHY_T ;


 int FALSE ;
 int stub1 (TYPE_2__*,TYPE_3__*) ;

void scic_sds_port_link_up(
   SCIC_SDS_PORT_T *this_port,
   SCIC_SDS_PHY_T *the_phy
)
{
   the_phy->is_in_link_training = FALSE;

   this_port->state_handlers->link_up_handler(this_port, the_phy);
}
