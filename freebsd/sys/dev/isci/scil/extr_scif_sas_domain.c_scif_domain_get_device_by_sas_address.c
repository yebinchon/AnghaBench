
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int remote_device_list; } ;
struct TYPE_10__ {int core_object; } ;
struct TYPE_9__ {scalar_t__ low; scalar_t__ high; } ;
typedef TYPE_1__ SCI_SAS_ADDRESS_T ;
typedef TYPE_2__* SCI_REMOTE_DEVICE_HANDLE_T ;
typedef scalar_t__ SCI_DOMAIN_HANDLE_T ;
typedef int SCI_ABSTRACT_ELEMENT_T ;
typedef TYPE_2__ SCIF_SAS_REMOTE_DEVICE_T ;
typedef TYPE_4__ SCIF_SAS_DOMAIN_T ;


 int SCIF_LOG_OBJECT_DOMAIN ;
 int SCIF_LOG_TRACE (int ) ;
 TYPE_2__* SCI_INVALID_HANDLE ;
 int * sci_abstract_list_get_front (int *) ;
 int * sci_abstract_list_get_next (int *) ;
 scalar_t__ sci_abstract_list_get_object (int *) ;
 int sci_base_object_get_logger (scalar_t__) ;
 int scic_remote_device_get_sas_address (int ,TYPE_1__*) ;

SCI_REMOTE_DEVICE_HANDLE_T scif_domain_get_device_by_sas_address(
   SCI_DOMAIN_HANDLE_T domain,
   SCI_SAS_ADDRESS_T * sas_address
)
{
   SCIF_SAS_DOMAIN_T * fw_domain = (SCIF_SAS_DOMAIN_T*) domain;
   SCI_ABSTRACT_ELEMENT_T * element = sci_abstract_list_get_front(
                                             &fw_domain->remote_device_list
                                          );
   SCIF_SAS_REMOTE_DEVICE_T * fw_device;
   SCI_SAS_ADDRESS_T fw_device_address;

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(domain),
      SCIF_LOG_OBJECT_DOMAIN,
      "scif_domain_get_device_by_sas_address(0x%x, 0x%x) enter\n",
      domain, sas_address
   ));



   while (element != ((void*)0))
   {
      fw_device = (SCIF_SAS_REMOTE_DEVICE_T*)
                  sci_abstract_list_get_object(element);

      scic_remote_device_get_sas_address(
         fw_device->core_object, &fw_device_address
      );


      if ( (fw_device_address.low == sas_address->low)
         && (fw_device_address.high == sas_address->high) )
      {
         return fw_device;
      }

      element = sci_abstract_list_get_next(element);
   }

   return SCI_INVALID_HANDLE;
}
