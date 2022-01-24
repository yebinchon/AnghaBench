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
typedef  int /*<<< orphan*/  U8 ;
typedef  int /*<<< orphan*/  U32 ;
typedef  int /*<<< orphan*/  SATI_TRANSLATOR_SEQUENCE_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCSI_DESCRIPTOR_CURRENT_RESPONSE_CODE ; 
 int /*<<< orphan*/ * FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
void FUNC10(
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
   U8 information_buff[8] = {0};

   U8 * register_fis = FUNC0(ata_io);

   FUNC8(sequence, scsi_io, scsi_status, &sense_data, &sense_len);

   information_buff[2] = FUNC2(register_fis);
   information_buff[3] = FUNC6(register_fis);
   information_buff[4] = FUNC4(register_fis);
   information_buff[5] = FUNC1(register_fis);
   information_buff[6] = FUNC5(register_fis);
   information_buff[7] = FUNC3(register_fis);

   FUNC9(
      sense_data,
      sense_len,
      0,
      SCSI_DESCRIPTOR_CURRENT_RESPONSE_CODE
   );

   FUNC7(
      sequence,
      scsi_io,
      sense_data,
      sense_len,
      sense_key,
      additional_sense_code,
      additional_sense_code_qualifier,
      information_buff
   );
}