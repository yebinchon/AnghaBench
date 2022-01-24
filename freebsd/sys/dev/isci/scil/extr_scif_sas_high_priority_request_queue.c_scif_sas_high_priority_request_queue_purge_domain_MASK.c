#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ U32 ;
struct TYPE_12__ {int /*<<< orphan*/  controller; } ;
struct TYPE_11__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  pool; } ;
struct TYPE_9__ {scalar_t__ is_internal; TYPE_1__* device; } ;
struct TYPE_10__ {TYPE_2__ parent; } ;
struct TYPE_8__ {TYPE_5__* domain; } ;
typedef  TYPE_3__ SCIF_SAS_IO_REQUEST_T ;
typedef  int /*<<< orphan*/  SCIF_SAS_INTERNAL_IO_REQUEST_T ;
typedef  TYPE_4__ SCIF_SAS_HIGH_PRIORITY_REQUEST_QUEUE_T ;
typedef  TYPE_5__ SCIF_SAS_DOMAIN_T ;
typedef  scalar_t__ POINTER_UINT ;

/* Variables and functions */
 int SCIF_LOG_OBJECT_CONTROLLER ; 
 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC8(
   SCIF_SAS_HIGH_PRIORITY_REQUEST_QUEUE_T * fw_hprq,
   SCIF_SAS_DOMAIN_T                      * fw_domain
)
{
   SCIF_SAS_IO_REQUEST_T * fw_io;
   POINTER_UINT            io_address;
   U32                     index;
   U32                     element_count;

   FUNC0((
      FUNC1(&fw_hprq->lock),
      SCIF_LOG_OBJECT_CONTROLLER | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
      "scif_sas_high_priority_request_queue_purge_domain(0x%x,0x%x) enter\n",
      fw_hprq, fw_domain
   ));

   element_count = FUNC2(fw_hprq->pool);

   FUNC5(fw_domain->controller, &fw_hprq->lock);

   for (index = 0; index < element_count; index++)
   {
      FUNC3(fw_hprq->pool, io_address);

      fw_io = (SCIF_SAS_IO_REQUEST_T*) io_address;

      // If the high priority request is not intended for this domain,
      // then it can be left in the pool.
      if (fw_io->parent.device->domain != fw_domain)
      {
         FUNC4(fw_hprq->pool, io_address);
      }
      else
      {
         if (fw_io->parent.is_internal)
         {
            SCIF_SAS_INTERNAL_IO_REQUEST_T * fw_internal_io =
               (SCIF_SAS_INTERNAL_IO_REQUEST_T *)fw_io;

            // The request was intended for a device in the domain.  Put it
            // back in the pool of freely available internal request memory
            // objects. The internal IO's timer is to be destoyed.
            FUNC7(fw_domain->controller, fw_internal_io);
         }
      }
   }

   FUNC6(fw_domain->controller, &fw_hprq->lock);
}