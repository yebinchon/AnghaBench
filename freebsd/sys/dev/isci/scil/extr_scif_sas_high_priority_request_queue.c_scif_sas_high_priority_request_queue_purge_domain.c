
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ U32 ;
struct TYPE_12__ {int controller; } ;
struct TYPE_11__ {int lock; int pool; } ;
struct TYPE_9__ {scalar_t__ is_internal; TYPE_1__* device; } ;
struct TYPE_10__ {TYPE_2__ parent; } ;
struct TYPE_8__ {TYPE_5__* domain; } ;
typedef TYPE_3__ SCIF_SAS_IO_REQUEST_T ;
typedef int SCIF_SAS_INTERNAL_IO_REQUEST_T ;
typedef TYPE_4__ SCIF_SAS_HIGH_PRIORITY_REQUEST_QUEUE_T ;
typedef TYPE_5__ SCIF_SAS_DOMAIN_T ;
typedef scalar_t__ POINTER_UINT ;


 int SCIF_LOG_OBJECT_CONTROLLER ;
 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ;
 int SCIF_LOG_TRACE (int ) ;
 int sci_base_object_get_logger (int *) ;
 scalar_t__ sci_pool_count (int ) ;
 int sci_pool_get (int ,scalar_t__) ;
 int sci_pool_put (int ,scalar_t__) ;
 int scif_cb_lock_acquire (int ,int *) ;
 int scif_cb_lock_release (int ,int *) ;
 int scif_sas_internal_io_request_destruct (int ,int *) ;

void scif_sas_high_priority_request_queue_purge_domain(
   SCIF_SAS_HIGH_PRIORITY_REQUEST_QUEUE_T * fw_hprq,
   SCIF_SAS_DOMAIN_T * fw_domain
)
{
   SCIF_SAS_IO_REQUEST_T * fw_io;
   POINTER_UINT io_address;
   U32 index;
   U32 element_count;

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(&fw_hprq->lock),
      SCIF_LOG_OBJECT_CONTROLLER | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
      "scif_sas_high_priority_request_queue_purge_domain(0x%x,0x%x) enter\n",
      fw_hprq, fw_domain
   ));

   element_count = sci_pool_count(fw_hprq->pool);

   scif_cb_lock_acquire(fw_domain->controller, &fw_hprq->lock);

   for (index = 0; index < element_count; index++)
   {
      sci_pool_get(fw_hprq->pool, io_address);

      fw_io = (SCIF_SAS_IO_REQUEST_T*) io_address;



      if (fw_io->parent.device->domain != fw_domain)
      {
         sci_pool_put(fw_hprq->pool, io_address);
      }
      else
      {
         if (fw_io->parent.is_internal)
         {
            SCIF_SAS_INTERNAL_IO_REQUEST_T * fw_internal_io =
               (SCIF_SAS_INTERNAL_IO_REQUEST_T *)fw_io;




            scif_sas_internal_io_request_destruct(fw_domain->controller, fw_internal_io);
         }
      }
   }

   scif_cb_lock_release(fw_domain->controller, &fw_hprq->lock);
}
