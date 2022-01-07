
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * sata_timeout_timer; } ;
typedef int SCI_BASE_OBJECT_T ;
typedef TYPE_1__ SCIC_SDS_PHY_T ;


 int SCI_BASE_PHY_STATE_STOPPED ;
 int scic_cb_timer_destroy (int ,int *) ;
 int scic_sds_phy_get_controller (TYPE_1__*) ;
 int scic_sds_phy_set_base_state_handlers (TYPE_1__*,int ) ;
 int scu_link_layer_stop_protocol_engine (TYPE_1__*) ;

__attribute__((used)) static
void scic_sds_phy_stopped_state_enter(
   SCI_BASE_OBJECT_T *object
)
{
   SCIC_SDS_PHY_T *this_phy;
   this_phy = (SCIC_SDS_PHY_T *)object;


   scic_sds_phy_set_base_state_handlers(this_phy, SCI_BASE_PHY_STATE_STOPPED);

   if (this_phy->sata_timeout_timer != ((void*)0))
   {
      scic_cb_timer_destroy(
         scic_sds_phy_get_controller(this_phy),
         this_phy->sata_timeout_timer
      );

      this_phy->sata_timeout_timer = ((void*)0);
   }

   scu_link_layer_stop_protocol_engine(this_phy);
}
