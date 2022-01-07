
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sata_timeout_timer; } ;
typedef int SCI_BASE_OBJECT_T ;
typedef TYPE_1__ SCIC_SDS_PHY_T ;


 int scic_cb_timer_stop (int ,int ) ;
 int scic_sds_phy_get_controller (TYPE_1__*) ;

__attribute__((used)) static
void scic_sds_phy_starting_await_sig_fis_uf_substate_exit(
   SCI_BASE_OBJECT_T *object
)
{
   SCIC_SDS_PHY_T *this_phy;
   this_phy = (SCIC_SDS_PHY_T *)object;

   scic_cb_timer_stop(
      scic_sds_phy_get_controller(this_phy),
      this_phy->sata_timeout_timer
   );
}
