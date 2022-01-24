#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  U32 ;
typedef  int /*<<< orphan*/  SCIF_SAS_TASK_REQUEST_T ;
typedef  int /*<<< orphan*/  SCIF_SAS_INTERNAL_IO_REQUEST_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 

U32 FUNC3(
   void
)
{
   return FUNC0(
            (sizeof(SCIF_SAS_INTERNAL_IO_REQUEST_T) + FUNC1()),
            (sizeof(SCIF_SAS_TASK_REQUEST_T) + FUNC2())
             );
}