#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * protocol_complete_handler; int /*<<< orphan*/  core_object; } ;
typedef  int /*<<< orphan*/  SMP_REQUEST_T ;
typedef  TYPE_1__ SCIF_SAS_REQUEST_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(
   SCIF_SAS_REQUEST_T * fw_request,
   SMP_REQUEST_T * smp_command
)
{
   void * command_iu_address =
      FUNC2(fw_request->core_object);

   //copy the smp_command to the address;
   FUNC0( (char*) command_iu_address,
           smp_command,
           sizeof(SMP_REQUEST_T)
          );

   FUNC1(fw_request->core_object);

   fw_request->protocol_complete_handler
      = NULL;
}