
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCI_STATUS ;
typedef scalar_t__ SCI_PHY_HANDLE_T ;
typedef int SCIC_SDS_PHY_T ;


 int ASSERT (int ) ;
 int FALSE ;
 int SCIC_LOG_OBJECT_PHY ;
 int SCIC_LOG_TRACE (int ) ;
 int SCI_FAILURE ;
 int sci_base_object_get_logger (int *) ;

SCI_STATUS scic_sata_phy_send_port_selection_signal(
   SCI_PHY_HANDLE_T phy
)
{
   SCIC_SDS_PHY_T *this_phy;
   this_phy = (SCIC_SDS_PHY_T *)phy;

   SCIC_LOG_TRACE((
      sci_base_object_get_logger(this_phy),
      SCIC_LOG_OBJECT_PHY,
      "scic_sata_phy_send_port_selection_signals(0x%x) enter\n",
      this_phy
   ));


   ASSERT(FALSE);
   return SCI_FAILURE;
}
