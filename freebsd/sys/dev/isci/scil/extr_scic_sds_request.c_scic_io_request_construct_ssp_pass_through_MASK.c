#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  state_machine; } ;
struct TYPE_15__ {TYPE_1__ parent; } ;
struct TYPE_13__ {int /*<<< orphan*/  (* scic_cb_passthru_get_transfer_length ) (TYPE_4__*) ;int /*<<< orphan*/  (* scic_cb_passthru_get_data_direction ) (TYPE_4__*) ;} ;
struct TYPE_14__ {TYPE_2__ common_callbacks; } ;
typedef  scalar_t__ SCI_STATUS ;
typedef  TYPE_3__ SCIC_SSP_PASSTHRU_REQUEST_CALLBACKS_T ;
typedef  TYPE_4__ SCIC_SDS_REQUEST_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCIC_LOG_OBJECT_STP_IO_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCI_BASE_REQUEST_STATE_CONSTRUCTED ; 
 scalar_t__ SCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 

SCI_STATUS FUNC8 (
   void                    * scic_io_request,
   SCIC_SSP_PASSTHRU_REQUEST_CALLBACKS_T *ssp_passthru_cb
)
{
   SCI_STATUS               status = SCI_SUCCESS;
   SCIC_SDS_REQUEST_T       * this_request;

   this_request = (SCIC_SDS_REQUEST_T * )scic_io_request;

   FUNC0((
      FUNC1(scic_io_request),
      SCIC_LOG_OBJECT_STP_IO_REQUEST,
      "scic_io_request_construct_ssp_pass_through(0x%x) enter\n",
      scic_io_request
   ));

   //build the task context from the pass through buffer
   FUNC5(
      this_request,
      ssp_passthru_cb->common_callbacks.scic_cb_passthru_get_data_direction (this_request),
      ssp_passthru_cb->common_callbacks.scic_cb_passthru_get_transfer_length(this_request)
   );

   //build the ssp command iu from the pass through buffer
   status = FUNC3 (
               this_request,
               ssp_passthru_cb
            );
   if (status != SCI_SUCCESS)
   {
      return status;
   }

   /* initialize the logging */
   FUNC4(this_request);

   FUNC2(
      &this_request->parent.state_machine,
      SCI_BASE_REQUEST_STATE_CONSTRUCTED
   );

   return status;
}