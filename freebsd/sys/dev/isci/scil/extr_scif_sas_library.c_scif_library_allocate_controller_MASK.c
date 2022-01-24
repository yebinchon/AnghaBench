#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  core_object; } ;
struct TYPE_7__ {int /*<<< orphan*/  core_object; } ;
typedef  scalar_t__ SCI_STATUS ;
typedef  scalar_t__ SCI_LIBRARY_HANDLE_T ;
typedef  scalar_t__ SCI_CONTROLLER_HANDLE_T ;
typedef  TYPE_1__ SCIF_SAS_LIBRARY_T ;
typedef  TYPE_2__ SCIF_SAS_CONTROLLER_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCIF_LOG_OBJECT_LIBRARY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__*,scalar_t__*) ; 
 scalar_t__ SCI_FAILURE_INVALID_PARAMETER_VALUE ; 
 scalar_t__ SCI_INVALID_HANDLE ; 
 scalar_t__ SCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,TYPE_2__*) ; 

SCI_STATUS FUNC6(
   SCI_LIBRARY_HANDLE_T      library,
   SCI_CONTROLLER_HANDLE_T * new_controller
)
{
   SCI_STATUS  status;

   // Ensure the user supplied a valid library handle.
   if (library != SCI_INVALID_HANDLE)
   {
      SCIF_SAS_LIBRARY_T * fw_library = (SCIF_SAS_LIBRARY_T *) library;

      // Allocate the framework library.
      FUNC1(fw_library, new_controller, &status);
      if (status == SCI_SUCCESS)
      {
         SCIF_SAS_CONTROLLER_T * fw_controller;

         // Allocate the core controller and save the handle in the framework
         // controller object.
         fw_controller = (SCIF_SAS_CONTROLLER_T*) *new_controller;

         // Just clear out the memory of the structure to be safe.
         FUNC2(fw_controller, 0, sizeof(SCIF_SAS_CONTROLLER_T));

         status = FUNC4(
                     fw_library->core_object, &(fw_controller->core_object)
                  );

         // Free the framework controller if the core controller allocation
         // failed.
         if (status != SCI_SUCCESS)
            FUNC5(library, fw_controller);
      }

      if (status != SCI_SUCCESS)
      {
         FUNC0((
            FUNC3(fw_library),
            SCIF_LOG_OBJECT_LIBRARY,
            "Library:0x%x Status:0x%x controller allocation failed\n",
            fw_library, status
         ));
      }
   }
   else
      status = SCI_FAILURE_INVALID_PARAMETER_VALUE;

   return status;
}