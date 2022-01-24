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
struct TYPE_3__ {scalar_t__* self_test_descriptor_index; } ;
typedef  int /*<<< orphan*/  SATI_TRANSLATOR_SEQUENCE_T ;
typedef  TYPE_1__ ATA_EXTENDED_SMART_SELF_TEST_LOG_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*) ; 

__attribute__((used)) static
void FUNC3(
   SATI_TRANSLATOR_SEQUENCE_T  * sequence,
   void                        * scsi_io,
   void                        * ata_data
)
{
   ATA_EXTENDED_SMART_SELF_TEST_LOG_T * ata_log =
                  (ATA_EXTENDED_SMART_SELF_TEST_LOG_T*) ata_data;

   FUNC1(sequence, scsi_io);

   //bytes 4-19
   if( (ata_log->self_test_descriptor_index[0] == 0) &&
       (ata_log->self_test_descriptor_index[1] == 0))
   {
      FUNC2(sequence, scsi_io);
   }
   else
   {
      FUNC0(sequence, scsi_io, ata_log);
   }
}