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
struct TYPE_3__ {int /*<<< orphan*/  user_request; } ;
typedef  int /*<<< orphan*/  SCI_STATUS ;
typedef  scalar_t__ SCI_IO_REQUEST_HANDLE_T ;
typedef  TYPE_1__ SCIC_SDS_REQUEST_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCIC_LOG_OBJECT_STP_IO_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

SCI_STATUS FUNC7(
   SCI_IO_REQUEST_HANDLE_T  scic_io_request
)
{
   SCI_STATUS           status;
   SCIC_SDS_REQUEST_T * request = (SCIC_SDS_REQUEST_T *)scic_io_request;

   FUNC0((
      FUNC1(scic_io_request),
      SCIC_LOG_OBJECT_STP_IO_REQUEST,
      "scic_io_request_construct_basic_sata(0x%x) enter\n",
      scic_io_request
   ));

   status = FUNC6(
               request,
               FUNC5(request->user_request),
               FUNC4(request->user_request),
               FUNC3(request->user_request),
               FUNC2(request->user_request),
               TRUE
            );

   return status;
}