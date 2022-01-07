
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ timer; } ;
struct TYPE_7__ {int controller; TYPE_1__ operation; } ;
typedef TYPE_2__ SCIF_SAS_DOMAIN_T ;


 int SCIF_LOG_OBJECT_DOMAIN ;
 int SCIF_LOG_OBJECT_INITIALIZATION ;
 int SCIF_LOG_TRACE (int ) ;
 int sci_base_object_get_logger (TYPE_2__*) ;
 scalar_t__ scif_cb_timer_create (int ,int ,TYPE_2__*) ;
 int scif_sas_domain_operation_timeout_handler ;

void scif_sas_domain_initialize(
   SCIF_SAS_DOMAIN_T * fw_domain
)
{
   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_domain),
      SCIF_LOG_OBJECT_DOMAIN | SCIF_LOG_OBJECT_INITIALIZATION,
      "scif_sas_domain_initialize(0x%x) enter\n",
      fw_domain
   ));




   if (fw_domain->operation.timer == 0)
   {
      fw_domain->operation.timer = scif_cb_timer_create(
                                      fw_domain->controller,
                                      scif_sas_domain_operation_timeout_handler,
                                      fw_domain
                                   );
   }
}
