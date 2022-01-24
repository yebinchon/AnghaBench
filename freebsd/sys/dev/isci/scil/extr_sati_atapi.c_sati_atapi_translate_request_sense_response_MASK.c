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
struct TYPE_4__ {int /*<<< orphan*/  state; int /*<<< orphan*/  is_sense_response_set; } ;
typedef  int /*<<< orphan*/  SCI_SSP_RESPONSE_IU_T ;
typedef  TYPE_1__ SATI_TRANSLATOR_SEQUENCE_T ;

/* Variables and functions */
 int /*<<< orphan*/  SATI_SEQUENCE_STATE_FINAL ; 
 int /*<<< orphan*/  SCSI_RESPONSE_DATA_PRES_SENSE_DATA ; 
 int /*<<< orphan*/  SCSI_STATUS_CHECK_CONDITION ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,void*) ; 

void FUNC3(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void                       * scsi_io,
   void                       * atapi_io
)
{
   //sense data is already in place.
   SCI_SSP_RESPONSE_IU_T * rsp_iu = (SCI_SSP_RESPONSE_IU_T*)
                                 FUNC0(scsi_io);

   FUNC1(
      rsp_iu,
      SCSI_STATUS_CHECK_CONDITION,
      FUNC2(sequence, scsi_io),
      SCSI_RESPONSE_DATA_PRES_SENSE_DATA
   );

   sequence->is_sense_response_set = TRUE;

   sequence->state = SATI_SEQUENCE_STATE_FINAL;
}