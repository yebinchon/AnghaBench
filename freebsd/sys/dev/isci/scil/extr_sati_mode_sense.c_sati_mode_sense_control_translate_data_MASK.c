#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int U8 ;
typedef  scalar_t__ U32 ;
struct TYPE_8__ {TYPE_1__* device; } ;
struct TYPE_7__ {scalar_t__ descriptor_sense_enable; } ;
typedef  TYPE_2__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef  int /*<<< orphan*/  ATA_IDENTIFY_DEVICE_DATA_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCSI_MODE_PAGE_CONTROL ; 
 int SCSI_MODE_SELECT_MODE_PAGE_D_SENSE ; 
 int SCSI_MODE_SENSE_PC_SHIFT ; 
 int* FUNC0 (void*) ; 
 int FUNC1 (int*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,void*,scalar_t__,int*) ; 
 scalar_t__ FUNC3 (TYPE_2__*,void*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,void*,scalar_t__,int) ; 

U32 FUNC5(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void                       * scsi_io,
   ATA_IDENTIFY_DEVICE_DATA_T * identify,
   U32                          offset
)
{
   U8 * cdb          = FUNC0(scsi_io);
   U8   page_control = FUNC1(cdb, 2) >> SCSI_MODE_SENSE_PC_SHIFT;
   U32  page_length;
   U8   value;

   page_length = FUNC3(
                    sequence,
                    scsi_io,
                    offset,
                    page_control,
                    SCSI_MODE_PAGE_CONTROL
                 );

   if (sequence->device->descriptor_sense_enable)
   {
       FUNC2(sequence, scsi_io, offset+2,
               &value);

       FUNC4(sequence, scsi_io, offset+2,
               value | SCSI_MODE_SELECT_MODE_PAGE_D_SENSE);
   }

   return page_length;
}