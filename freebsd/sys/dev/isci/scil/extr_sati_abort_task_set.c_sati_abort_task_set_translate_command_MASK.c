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
typedef  int /*<<< orphan*/  U8 ;
struct TYPE_4__ {int /*<<< orphan*/  state; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef  int /*<<< orphan*/  SATI_STATUS ;
typedef  int /*<<< orphan*/  ATA_NCQ_COMMAND_ERROR_LOG_T ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_LOG_PAGE_NCQ_ERROR ; 
 int /*<<< orphan*/  SATI_SEQUENCE_ABORT_TASK_SET ; 
 int /*<<< orphan*/  SATI_SEQUENCE_STATE_AWAIT_RESPONSE ; 
 int /*<<< orphan*/  SATI_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (void*,TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

SATI_STATUS FUNC3(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void                       * scsi_io,
   void                       * ata_io
)
{
   U8 * register_fis;

   //ATA Read Log Ext with log address set to 0x10
   FUNC0(
      ata_io,
      sequence,
      ATA_LOG_PAGE_NCQ_ERROR,
      sizeof(ATA_NCQ_COMMAND_ERROR_LOG_T)
   );

   register_fis = FUNC1(ata_io);
   FUNC2(register_fis);

   sequence->type                = SATI_SEQUENCE_ABORT_TASK_SET;
   sequence->state               = SATI_SEQUENCE_STATE_AWAIT_RESPONSE;

   return SATI_SUCCESS;
}