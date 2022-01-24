#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t U8 ;
struct TYPE_5__ {int /*<<< orphan*/ * domains; } ;
typedef  int /*<<< orphan*/  SCI_STATUS ;
typedef  int /*<<< orphan*/  SCIF_SAS_DOMAIN_T ;
typedef  TYPE_1__ SCIF_SAS_CONTROLLER_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCIF_LOG_OBJECT_CONTROLLER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t SCI_MAX_DOMAINS ; 
 int /*<<< orphan*/  SCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 

SCI_STATUS FUNC3(
   SCIF_SAS_CONTROLLER_T * fw_controller
)
{
   U8 index;
   SCIF_SAS_DOMAIN_T * fw_domain;

   FUNC0((
      FUNC1(fw_controller),
      SCIF_LOG_OBJECT_CONTROLLER,
      "scif_sas_controller_release_resource(0x%x) enter\n",
      fw_controller
   ));

   //currently the only resource to be released is domain's timer.
   for (index = 0; index < SCI_MAX_DOMAINS; index++)
   {
      fw_domain = &fw_controller->domains[index];

      FUNC2(fw_controller, fw_domain);
   }

   return SCI_SUCCESS;
}