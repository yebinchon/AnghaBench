
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int smp_phy_memory_list; } ;
struct TYPE_6__ {int list_element; } ;
typedef TYPE_1__ SCIF_SAS_SMP_PHY_T ;
typedef TYPE_2__ SCIF_SAS_CONTROLLER_T ;


 int SCIF_LOG_OBJECT_CONTROLLER ;
 int SCIF_LOG_TRACE (int ) ;
 int sci_base_object_get_logger (TYPE_2__*) ;
 int sci_fast_list_insert_tail (int *,int *) ;

void scif_sas_controller_free_smp_phy(
   SCIF_SAS_CONTROLLER_T * fw_controller,
   SCIF_SAS_SMP_PHY_T * smp_phy
)
{
   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_controller),
      SCIF_LOG_OBJECT_CONTROLLER,
      "scif_controller_free_smp_phy(0x%x, 0x%x) enter\n",
      fw_controller, smp_phy
   ));


   sci_fast_list_insert_tail(
      &fw_controller->smp_phy_memory_list,
      &smp_phy->list_element
   );
}
