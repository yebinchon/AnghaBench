
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* state_handlers; } ;
struct TYPE_5__ {int (* link_down_handler ) (TYPE_2__*,int *) ;} ;
typedef TYPE_2__ SCIC_SDS_PORT_T ;
typedef int SCIC_SDS_PHY_T ;


 int stub1 (TYPE_2__*,int *) ;

void scic_sds_port_link_down(
   SCIC_SDS_PORT_T *this_port,
   SCIC_SDS_PHY_T *the_phy
)
{
   this_port->state_handlers->link_down_handler(this_port, the_phy);
}
