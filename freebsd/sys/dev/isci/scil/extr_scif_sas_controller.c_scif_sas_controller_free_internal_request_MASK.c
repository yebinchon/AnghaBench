#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  internal_request_memory_pool; } ;
typedef  TYPE_1__ SCIF_SAS_CONTROLLER_T ;
typedef  int /*<<< orphan*/  POINTER_UINT ;

/* Variables and functions */
 int SCIF_LOG_OBJECT_CONTROLLER ; 
 int SCIF_LOG_OBJECT_IO_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(
   SCIF_SAS_CONTROLLER_T * fw_controller,
   void                  * fw_internal_request_buffer
)
{
   FUNC0((
      FUNC1(fw_controller),
      SCIF_LOG_OBJECT_CONTROLLER | SCIF_LOG_OBJECT_IO_REQUEST,
      "scif_controller_free_internal_request(0x%x, 0x%x) enter\n",
      fw_controller, fw_internal_request_buffer
   ));

   //return the memory to the pool.
   if( !FUNC2(fw_controller->internal_request_memory_pool) )
   {
      FUNC3(
         fw_controller->internal_request_memory_pool,
         (POINTER_UINT) fw_internal_request_buffer
      );
   }
}