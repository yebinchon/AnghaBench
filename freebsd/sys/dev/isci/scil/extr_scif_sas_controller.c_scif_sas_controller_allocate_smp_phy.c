
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int smp_phy_memory_list; } ;
typedef int SCIF_SAS_SMP_PHY_T ;
typedef TYPE_1__ SCIF_SAS_CONTROLLER_T ;


 int SCIF_LOG_OBJECT_CONTROLLER ;
 int SCIF_LOG_TRACE (int ) ;
 int memset (char*,int ,int) ;
 int sci_base_object_get_logger (TYPE_1__*) ;
 int sci_fast_list_is_empty (int *) ;
 scalar_t__ sci_fast_list_remove_head (int *) ;

SCIF_SAS_SMP_PHY_T * scif_sas_controller_allocate_smp_phy(
   SCIF_SAS_CONTROLLER_T * fw_controller
)
{
   SCIF_SAS_SMP_PHY_T * smp_phy;

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_controller),
      SCIF_LOG_OBJECT_CONTROLLER,
      "scif_controller_allocate_smp_phy(0x%x) enter\n",
      fw_controller
   ));

   if( !sci_fast_list_is_empty(&fw_controller->smp_phy_memory_list) )
   {
      smp_phy = (SCIF_SAS_SMP_PHY_T *)
         sci_fast_list_remove_head(&fw_controller->smp_phy_memory_list);


      memset((char*)smp_phy,
             0,
             sizeof(SCIF_SAS_SMP_PHY_T)
            );

      return smp_phy;
   }
   else
      return ((void*)0);
}
