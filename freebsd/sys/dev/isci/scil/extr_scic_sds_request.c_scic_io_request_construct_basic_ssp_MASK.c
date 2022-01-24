#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  state_machine; } ;
struct TYPE_9__ {TYPE_1__ parent; int /*<<< orphan*/  protocol; } ;
typedef  int /*<<< orphan*/  SCI_STATUS ;
typedef  scalar_t__ SCI_IO_REQUEST_HANDLE_T ;
typedef  TYPE_2__ SCIC_SDS_REQUEST_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCIC_LOG_OBJECT_SSP_IO_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCIC_SSP_PROTOCOL ; 
 int /*<<< orphan*/  SCI_BASE_REQUEST_STATE_CONSTRUCTED ; 
 int /*<<< orphan*/  SCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 void* FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

SCI_STATUS FUNC9(
   SCI_IO_REQUEST_HANDLE_T  scic_io_request
)
{
   void               *os_handle;
   SCIC_SDS_REQUEST_T *this_request;
   this_request = (SCIC_SDS_REQUEST_T *)scic_io_request;

   FUNC0((
      FUNC1(this_request),
      SCIC_LOG_OBJECT_SSP_IO_REQUEST,
      "scic_io_request_construct_basic_ssp(0x%x) enter\n",
      this_request
   ));

   this_request->protocol = SCIC_SSP_PROTOCOL;

   os_handle = FUNC6(this_request);

   FUNC8(
      this_request,
      FUNC3(os_handle),
      FUNC4(os_handle)
   );


   FUNC5(this_request);

   FUNC7(this_request);

   FUNC2(
      &this_request->parent.state_machine,
      SCI_BASE_REQUEST_STATE_CONSTRUCTED
   );

   return SCI_SUCCESS;
}