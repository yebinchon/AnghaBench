
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int parent; } ;
struct TYPE_9__ {int parent; TYPE_2__* state_handlers; } ;
struct TYPE_7__ {int (* add_phy_handler ) (int *,int *) ;} ;
struct TYPE_8__ {TYPE_1__ parent; } ;
typedef int SCI_STATUS ;
typedef TYPE_3__ SCIC_SDS_PORT_T ;
typedef TYPE_4__ SCIC_SDS_PHY_T ;


 int stub1 (int *,int *) ;

SCI_STATUS scic_sds_port_add_phy(
   SCIC_SDS_PORT_T * this_port,
   SCIC_SDS_PHY_T * the_phy
)
{
   return this_port->state_handlers->parent.add_phy_handler(
                                          &this_port->parent, &the_phy->parent);
}
