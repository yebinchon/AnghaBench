
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCI_BASE_OBJECT_T ;
typedef int SCIC_SDS_PHY_T ;


 int scic_sds_controller_power_control_queue_remove (int ,int *) ;
 int scic_sds_phy_get_controller (int *) ;

__attribute__((used)) static
void scic_sds_phy_starting_await_sata_power_substate_exit(
   SCI_BASE_OBJECT_T *object
)
{
   SCIC_SDS_PHY_T *this_phy;
   this_phy = (SCIC_SDS_PHY_T *)object;

   scic_sds_controller_power_control_queue_remove(
      scic_sds_phy_get_controller(this_phy),
      this_phy
      );
}
