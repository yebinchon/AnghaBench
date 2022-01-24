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
typedef  int /*<<< orphan*/  U8 ;
struct TYPE_3__ {scalar_t__ ata_transfer_length; int /*<<< orphan*/  protocol; int /*<<< orphan*/  data_direction; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef  int /*<<< orphan*/  SATI_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_CONTROL_REG_SOFT_RESET_BIT ; 
 int /*<<< orphan*/  ATA_NOP ; 
 int /*<<< orphan*/  SATI_DATA_DIRECTION_NONE ; 
 int /*<<< orphan*/  SATI_SEQUENCE_LUN_RESET ; 
 int /*<<< orphan*/  SATI_SUCCESS ; 
 int /*<<< orphan*/  SAT_PROTOCOL_SOFT_RESET ; 
 int /*<<< orphan*/ * FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

SATI_STATUS FUNC15(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void                       * scsi_io,
   void                       * ata_io
)
{
   U8* register_fis = FUNC0(ata_io);

   FUNC2(register_fis, ATA_NOP);
   FUNC3(register_fis, ATA_CONTROL_REG_SOFT_RESET_BIT);

   //set all other fields to zero.
   FUNC1(register_fis);
   FUNC5(register_fis, 0);
   FUNC6(register_fis, 0);
   FUNC13(register_fis, 0);
   FUNC14(register_fis, 0);
   FUNC9(register_fis, 0);
   FUNC11(register_fis, 0);
   FUNC7(register_fis, 0);
   FUNC10(register_fis, 0);
   FUNC12(register_fis, 0);
   FUNC8(register_fis, 0);
   FUNC4(register_fis, 0);

   sequence->type                = SATI_SEQUENCE_LUN_RESET;
   sequence->data_direction      = SATI_DATA_DIRECTION_NONE;
   sequence->protocol            = SAT_PROTOCOL_SOFT_RESET;
   sequence->ata_transfer_length = 0;

   return SATI_SUCCESS;
}