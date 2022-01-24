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
typedef  int /*<<< orphan*/  U32 ;
typedef  int /*<<< orphan*/  SATI_TRANSLATOR_SEQUENCE_T ;

/* Variables and functions */
 int FALSE ; 
 int SCSI_FIXED_CURRENT_RESPONSE_CODE ; 
 int TRUE ; 
 int* FUNC0 (void*) ; 
 int FUNC1 (int*) ; 
 int FUNC2 (int*) ; 
 int FUNC3 (int*) ; 
 int FUNC4 (int*) ; 
 scalar_t__ FUNC5 (int*) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,void*,int,int**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static
void FUNC9(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void                       * scsi_io,
   void                       * ata_io,
   U8                           scsi_status,
   U8                           response_code,
   U8                           sense_key,
   U8                           additional_sense_code,
   U8                           additional_sense_code_qualifier
)
{
   U8 * sense_data;
   U32  sense_len;
   U8   valid = TRUE;

   U8 * register_fis = FUNC0(ata_io);

   FUNC7(sequence, scsi_io, scsi_status, &sense_data, &sense_len);

   if(FUNC5(register_fis) > 0)
   {
      valid = FALSE;
   }

   FUNC8(sense_data, sense_len, 3,  FUNC3(register_fis));
   FUNC8(sense_data, sense_len, 4,  FUNC1(register_fis));
   FUNC8(sense_data, sense_len, 5,  FUNC4(register_fis));
   FUNC8(sense_data, sense_len, 6,  FUNC2(register_fis));


   FUNC8(
      sense_data,
      sense_len,
      0,
      (valid << 7) | SCSI_FIXED_CURRENT_RESPONSE_CODE
   );

   FUNC6(
      sense_data,
      sense_len,
      sense_key,
      additional_sense_code,
      additional_sense_code_qualifier
   );
}