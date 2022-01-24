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
typedef  int U32 ;
typedef  int /*<<< orphan*/  SATI_TRANSLATOR_SEQUENCE_T ;

/* Variables and functions */
 int SCSI_FIXED_SENSE_DATA_VALID_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*,int,int**,int*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int,int,int) ; 

void FUNC2(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void                       * scsi_io,
   U8                           scsi_status,
   U8                           response_code,
   U8                           sense_key,
   U8                           additional_sense_code,
   U8                           additional_sense_code_qualifier
)
{
    U8 * sense_data;
    U32  sense_len;

    FUNC0(sequence, scsi_io, scsi_status, &sense_data, &sense_len);

    // Write out the sense data format per SPC-4.
    // We utilize the fixed format sense data format.

    FUNC1(
      sense_data,
      sense_len,
      0,
      response_code | SCSI_FIXED_SENSE_DATA_VALID_BIT
    );

    FUNC1(sense_data, sense_len, 1,  0);
    FUNC1(sense_data, sense_len, 2,  sense_key);
    FUNC1(sense_data, sense_len, 3,  0);
    FUNC1(sense_data, sense_len, 4,  0);
    FUNC1(sense_data, sense_len, 5,  0);
    FUNC1(sense_data, sense_len, 6,  0);
    FUNC1(sense_data, sense_len, 7,  (sense_len < 18 ? sense_len - 1 : 17) - 7);
    FUNC1(sense_data, sense_len, 8,  0);
    FUNC1(sense_data, sense_len, 9,  0);
    FUNC1(sense_data, sense_len, 10, 0);
    FUNC1(sense_data, sense_len, 11, 0);
    FUNC1(sense_data, sense_len, 12, additional_sense_code);
    FUNC1(sense_data, sense_len, 13, additional_sense_code_qualifier);
    FUNC1(sense_data, sense_len, 14, 0);
    FUNC1(sense_data, sense_len, 15, 0);
    FUNC1(sense_data, sense_len, 16, 0);
    FUNC1(sense_data, sense_len, 17, 0);
}