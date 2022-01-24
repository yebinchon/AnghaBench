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
typedef  int U8 ;
typedef  int /*<<< orphan*/  SATI_TRANSLATOR_SEQUENCE_T ;

/* Variables and functions */
 int SCSI_FIXED_CURRENT_RESPONSE_CODE ; 
 int SCSI_FIXED_SENSE_DATA_VALID_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*,int,int) ; 

void FUNC1(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void                       * scsi_io,
   U8                           sense_key,
   U8                           additional_sense_code,
   U8                           additional_sense_code_qualifier
)
{
   FUNC0(
      sequence,
      scsi_io,
      0,
      SCSI_FIXED_CURRENT_RESPONSE_CODE | SCSI_FIXED_SENSE_DATA_VALID_BIT
   );

   FUNC0(sequence, scsi_io, 1, 0);
   FUNC0(sequence, scsi_io, 2, sense_key);
   FUNC0(sequence, scsi_io, 3, 0);
   FUNC0(sequence, scsi_io, 4, 0);
   FUNC0(sequence, scsi_io, 5, 0);
   FUNC0(sequence, scsi_io, 6, 0);
   FUNC0(sequence, scsi_io, 7, 0);
   FUNC0(sequence, scsi_io, 8, 0);
   FUNC0(sequence, scsi_io, 9, 0);
   FUNC0(sequence, scsi_io, 10, 0);
   FUNC0(sequence, scsi_io, 11, 0);
   FUNC0(sequence, scsi_io, 12, additional_sense_code);
   FUNC0(sequence, scsi_io, 13, additional_sense_code_qualifier);
   FUNC0(sequence, scsi_io, 14, 0);
   FUNC0(sequence, scsi_io, 15, 0);
   FUNC0(sequence, scsi_io, 16, 0);
   FUNC0(sequence, scsi_io, 17, 0);
}