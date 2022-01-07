
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int internal_request_entries; int * mdes; } ;
typedef TYPE_1__ SCIF_SAS_CONTROLLER_T ;


 size_t SCIF_SAS_MDE_INTERNAL_IO ;
 int SCI_MDE_ATTRIBUTE_PHYSICALLY_CONTIGUOUS ;
 int sci_base_mde_construct (int *,int,int,int ) ;
 int scif_sas_internal_request_get_object_size () ;

void scif_sas_controller_build_mdl(
   SCIF_SAS_CONTROLLER_T * fw_controller
)
{

   sci_base_mde_construct(
      &fw_controller->mdes[SCIF_SAS_MDE_INTERNAL_IO],
      4,
      fw_controller->internal_request_entries *
         scif_sas_internal_request_get_object_size(),
      SCI_MDE_ATTRIBUTE_PHYSICALLY_CONTIGUOUS
   );
}
