
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * timer; } ;
struct TYPE_5__ {TYPE_1__ operation; } ;
typedef TYPE_2__ SCIF_SAS_DOMAIN_T ;
typedef int SCIF_SAS_CONTROLLER_T ;


 int scif_cb_timer_destroy (int *,int *) ;

void scif_sas_domain_release_resource(
   SCIF_SAS_CONTROLLER_T * fw_controller,
   SCIF_SAS_DOMAIN_T * fw_domain
)
{
   if (fw_domain->operation.timer != ((void*)0))
   {
      scif_cb_timer_destroy(fw_controller, fw_domain->operation.timer);
      fw_domain->operation.timer = ((void*)0);
   }
}
