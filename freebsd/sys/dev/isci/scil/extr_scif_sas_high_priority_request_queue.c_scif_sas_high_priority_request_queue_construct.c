
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int level; } ;
struct TYPE_5__ {int pool; TYPE_1__ lock; } ;
typedef int SCI_BASE_OBJECT_T ;
typedef int SCI_BASE_LOGGER_T ;
typedef TYPE_2__ SCIF_SAS_HIGH_PRIORITY_REQUEST_QUEUE_T ;


 int SCIF_LOG_OBJECT_CONTROLLER ;
 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ;
 int SCIF_LOG_TRACE (int *) ;
 int SCI_LOCK_LEVEL_NONE ;
 int sci_base_object_construct (int *,int *) ;
 int sci_pool_initialize (int ) ;

void scif_sas_high_priority_request_queue_construct(
   SCIF_SAS_HIGH_PRIORITY_REQUEST_QUEUE_T * fw_hprq,
   SCI_BASE_LOGGER_T * logger
)
{
   SCIF_LOG_TRACE((
      logger,
      SCIF_LOG_OBJECT_CONTROLLER | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
      "scif_sas_high_priority_request_queue_construct(0x%x,0x%x) enter\n",
      fw_hprq, logger
   ));

   sci_base_object_construct((SCI_BASE_OBJECT_T*) &fw_hprq->lock, logger);
   fw_hprq->lock.level = SCI_LOCK_LEVEL_NONE;

   sci_pool_initialize(fw_hprq->pool);
}
