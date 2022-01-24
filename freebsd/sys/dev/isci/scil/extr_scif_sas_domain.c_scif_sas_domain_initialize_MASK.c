#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ timer; } ;
struct TYPE_7__ {int /*<<< orphan*/  controller; TYPE_1__ operation; } ;
typedef  TYPE_2__ SCIF_SAS_DOMAIN_T ;

/* Variables and functions */
 int SCIF_LOG_OBJECT_DOMAIN ; 
 int SCIF_LOG_OBJECT_INITIALIZATION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  scif_sas_domain_operation_timeout_handler ; 

void FUNC3(
   SCIF_SAS_DOMAIN_T * fw_domain
)
{
   FUNC0((
      FUNC1(fw_domain),
      SCIF_LOG_OBJECT_DOMAIN | SCIF_LOG_OBJECT_INITIALIZATION,
      "scif_sas_domain_initialize(0x%x) enter\n",
      fw_domain
   ));

   // Create the timer for each domain.  It is too early in the process
   // to allocate this during construction since the user didn't have
   // a chance to set it's association.
   if (fw_domain->operation.timer == 0)
   {
      fw_domain->operation.timer = FUNC2(
                                      fw_domain->controller,
                                      scif_sas_domain_operation_timeout_handler,
                                      fw_domain
                                   );
   }
}