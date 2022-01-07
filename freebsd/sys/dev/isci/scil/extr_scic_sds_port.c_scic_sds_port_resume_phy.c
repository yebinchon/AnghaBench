
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int phy_index; } ;
struct TYPE_6__ {int enabled_phy_mask; } ;
typedef TYPE_1__ SCIC_SDS_PORT_T ;
typedef TYPE_2__ SCIC_SDS_PHY_T ;


 int scic_sds_phy_resume (TYPE_2__*) ;

__attribute__((used)) static
void scic_sds_port_resume_phy(
   SCIC_SDS_PORT_T * this_port,
   SCIC_SDS_PHY_T * the_phy
)
{
   scic_sds_phy_resume (the_phy);
   this_port->enabled_phy_mask |= 1 << the_phy->phy_index;
}
