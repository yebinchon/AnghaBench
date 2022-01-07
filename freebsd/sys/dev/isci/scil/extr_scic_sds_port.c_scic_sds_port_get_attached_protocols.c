
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ all; } ;
struct TYPE_6__ {TYPE_1__ u; } ;
typedef TYPE_2__ SCI_SAS_IDENTIFY_ADDRESS_FRAME_PROTOCOLS_T ;
typedef int SCIC_SDS_PORT_T ;
typedef int SCIC_SDS_PHY_T ;


 int SCIC_LOG_OBJECT_PORT ;
 int SCIC_LOG_TRACE (int ) ;
 int sci_base_object_get_logger (int *) ;
 int scic_sds_phy_get_attached_phy_protocols (int *,TYPE_2__*) ;
 int * scic_sds_port_get_a_connected_phy (int *) ;

void scic_sds_port_get_attached_protocols(
   SCIC_SDS_PORT_T * this_port,
   SCI_SAS_IDENTIFY_ADDRESS_FRAME_PROTOCOLS_T * protocols
)
{
   SCIC_SDS_PHY_T *phy;

   SCIC_LOG_TRACE((
      sci_base_object_get_logger(this_port),
      SCIC_LOG_OBJECT_PORT,
      "scic_sds_port_get_attached_protocols(0x%x, 0x%x) enter\n",
      this_port, protocols
   ));



   phy = scic_sds_port_get_a_connected_phy(this_port);
   if (phy != ((void*)0))
      scic_sds_phy_get_attached_phy_protocols(phy, protocols);
   else
      protocols->u.all = 0;
}
