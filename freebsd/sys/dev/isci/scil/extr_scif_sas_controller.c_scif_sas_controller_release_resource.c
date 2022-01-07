
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t U8 ;
struct TYPE_5__ {int * domains; } ;
typedef int SCI_STATUS ;
typedef int SCIF_SAS_DOMAIN_T ;
typedef TYPE_1__ SCIF_SAS_CONTROLLER_T ;


 int SCIF_LOG_OBJECT_CONTROLLER ;
 int SCIF_LOG_TRACE (int ) ;
 size_t SCI_MAX_DOMAINS ;
 int SCI_SUCCESS ;
 int sci_base_object_get_logger (TYPE_1__*) ;
 int scif_sas_domain_release_resource (TYPE_1__*,int *) ;

SCI_STATUS scif_sas_controller_release_resource(
   SCIF_SAS_CONTROLLER_T * fw_controller
)
{
   U8 index;
   SCIF_SAS_DOMAIN_T * fw_domain;

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_controller),
      SCIF_LOG_OBJECT_CONTROLLER,
      "scif_sas_controller_release_resource(0x%x) enter\n",
      fw_controller
   ));


   for (index = 0; index < SCI_MAX_DOMAINS; index++)
   {
      fw_domain = &fw_controller->domains[index];

      scif_sas_domain_release_resource(fw_controller, fw_domain);
   }

   return SCI_SUCCESS;
}
