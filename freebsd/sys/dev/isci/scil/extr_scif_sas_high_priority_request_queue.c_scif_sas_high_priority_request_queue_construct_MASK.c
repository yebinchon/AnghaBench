#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  level; } ;
struct TYPE_5__ {int /*<<< orphan*/  pool; TYPE_1__ lock; } ;
typedef  int /*<<< orphan*/  SCI_BASE_OBJECT_T ;
typedef  int /*<<< orphan*/  SCI_BASE_LOGGER_T ;
typedef  TYPE_2__ SCIF_SAS_HIGH_PRIORITY_REQUEST_QUEUE_T ;

/* Variables and functions */
 int SCIF_LOG_OBJECT_CONTROLLER ; 
 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SCI_LOCK_LEVEL_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(
   SCIF_SAS_HIGH_PRIORITY_REQUEST_QUEUE_T * fw_hprq,
   SCI_BASE_LOGGER_T                      * logger
)
{
   FUNC0((
      logger,
      SCIF_LOG_OBJECT_CONTROLLER | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
      "scif_sas_high_priority_request_queue_construct(0x%x,0x%x) enter\n",
      fw_hprq, logger
   ));

   FUNC1((SCI_BASE_OBJECT_T*) &fw_hprq->lock, logger);
   fw_hprq->lock.level = SCI_LOCK_LEVEL_NONE;

   FUNC2(fw_hprq->pool);
}