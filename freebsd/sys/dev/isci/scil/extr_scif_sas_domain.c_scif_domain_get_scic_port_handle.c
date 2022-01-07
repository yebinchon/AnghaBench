
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ core_object; } ;
typedef scalar_t__ SCI_PORT_HANDLE_T ;
typedef scalar_t__ SCI_DOMAIN_HANDLE_T ;
typedef TYPE_1__ SCIF_SAS_DOMAIN_T ;


 int SCIF_LOG_OBJECT_DOMAIN ;
 int SCIF_LOG_WARNING (int ) ;
 scalar_t__ SCI_INVALID_HANDLE ;
 int sci_base_object_get_logger (TYPE_1__*) ;

SCI_PORT_HANDLE_T scif_domain_get_scic_port_handle(
   SCI_DOMAIN_HANDLE_T domain
)
{
   SCIF_SAS_DOMAIN_T * fw_domain = (SCIF_SAS_DOMAIN_T*) domain;

   if ( (fw_domain == ((void*)0)) || (fw_domain->core_object == SCI_INVALID_HANDLE) )
      return SCI_INVALID_HANDLE;

   SCIF_LOG_WARNING((
      sci_base_object_get_logger(fw_domain),
      SCIF_LOG_OBJECT_DOMAIN,
      "Domain:0x%x no associated core port found\n",
      fw_domain
   ));

   return fw_domain->core_object;
}
