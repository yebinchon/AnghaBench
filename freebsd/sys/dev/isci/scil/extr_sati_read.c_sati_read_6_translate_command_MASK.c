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
struct TYPE_5__ {int /*<<< orphan*/  type; int /*<<< orphan*/  data_direction; } ;
typedef  TYPE_1__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef  int /*<<< orphan*/  SATI_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  SATI_DATA_DIRECTION_IN ; 
 int /*<<< orphan*/  SATI_FAILURE_CHECK_RESPONSE_DATA ; 
 int /*<<< orphan*/  SATI_SEQUENCE_READ_6 ; 
 scalar_t__ FUNC0 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,void*,void*) ; 

SATI_STATUS FUNC2(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void                       * scsi_io,
   void                       * ata_io
)
{
   if(FUNC0(sequence, scsi_io))
   {
      return SATI_FAILURE_CHECK_RESPONSE_DATA;
   }
   else
   {
      sequence->data_direction = SATI_DATA_DIRECTION_IN;
      sequence->type           = SATI_SEQUENCE_READ_6;

      return FUNC1(sequence, scsi_io, ata_io);
   }
}