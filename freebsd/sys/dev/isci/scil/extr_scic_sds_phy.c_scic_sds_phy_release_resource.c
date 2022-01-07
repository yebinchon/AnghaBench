
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * sata_timeout_timer; } ;
typedef TYPE_1__ SCIC_SDS_PHY_T ;
typedef int SCIC_SDS_CONTROLLER_T ;


 int SCIC_LOG_OBJECT_PHY ;
 int SCIC_LOG_TRACE (int ) ;
 int sci_base_object_get_logger (TYPE_1__*) ;
 int scic_cb_timer_destroy (int *,int *) ;

void scic_sds_phy_release_resource(
   SCIC_SDS_CONTROLLER_T * controller,
   SCIC_SDS_PHY_T * this_phy
)
{
   SCIC_LOG_TRACE((
      sci_base_object_get_logger(this_phy),
      SCIC_LOG_OBJECT_PHY,
      "scic_sds_phy_release_resource(0x%x, 0x%x)\n",
      controller, this_phy
   ));


   if (this_phy->sata_timeout_timer != ((void*)0))
   {
      scic_cb_timer_destroy(controller, this_phy->sata_timeout_timer);
      this_phy->sata_timeout_timer = ((void*)0);
   }
}
