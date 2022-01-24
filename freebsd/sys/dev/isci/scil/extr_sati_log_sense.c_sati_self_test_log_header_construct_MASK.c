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
typedef  int /*<<< orphan*/  SATI_TRANSLATOR_SEQUENCE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*,int,int) ; 

__attribute__((used)) static
void FUNC1(
   SATI_TRANSLATOR_SEQUENCE_T  * sequence,
   void                        * scsi_io
)
{
   //PAGE CODE for Self-Test Log Page
   FUNC0(sequence, scsi_io, 0, 0x10);
   FUNC0(sequence, scsi_io, 1, 0x00);

   //PAGE LENGTH is 0x14 instead of 0x190, not returning 20/0x190 log perameters
   FUNC0(sequence, scsi_io, 2, 0x00);
   FUNC0(sequence, scsi_io, 3, 0x14);

   /*
    * Log PARAMETER 0x0001
    * Only sending one log parameter per self-test request.
    */
   FUNC0(sequence, scsi_io, 4, 0x00);       //log_parameter byte 0
   FUNC0(sequence, scsi_io, 5, 0x01);       //log_parameter byte 1

   //Set to 0x03 per SATv2 spec
   FUNC0(sequence, scsi_io, 6, 0x03);       //log_parameter byte 2

   //Parameter Length set to 0x10 per SATv2 spec
   FUNC0(sequence, scsi_io, 7, 0x10);       //log_parameter byte 3
}