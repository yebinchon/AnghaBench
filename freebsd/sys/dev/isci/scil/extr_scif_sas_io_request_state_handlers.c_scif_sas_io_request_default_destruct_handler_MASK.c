#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  state_machine; } ;
struct TYPE_6__ {TYPE_1__ parent; } ;
struct TYPE_7__ {TYPE_2__ parent; } ;
typedef  int /*<<< orphan*/  SCI_STATUS ;
typedef  int /*<<< orphan*/  SCI_BASE_REQUEST_T ;
typedef  TYPE_3__ SCIF_SAS_IO_REQUEST_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCIF_LOG_OBJECT_IO_REQUEST ; 
 int /*<<< orphan*/  SCI_FAILURE_INVALID_STATE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

SCI_STATUS FUNC3(
   SCI_BASE_REQUEST_T * io_request
)
{
   FUNC0((
      FUNC1((SCIF_SAS_IO_REQUEST_T *) io_request),
      SCIF_LOG_OBJECT_IO_REQUEST,
      "IoRequest:0x%x State:0x%x invalid state to destruct.\n",
      io_request,
      FUNC2(
         &((SCIF_SAS_IO_REQUEST_T *) io_request)->parent.parent.state_machine)
   ));

   return SCI_FAILURE_INVALID_STATE;
}