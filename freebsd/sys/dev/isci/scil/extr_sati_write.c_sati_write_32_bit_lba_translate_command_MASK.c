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
typedef  scalar_t__ SATI_STATUS ;

/* Variables and functions */
 scalar_t__ SATI_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,void*,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static
SATI_STATUS FUNC2(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void                       * scsi_io,
   void                       * ata_io,
   U32                          sector_count,
   U8                           control_byte_offset
)
{
   U8           device_head = 0;
   SATI_STATUS  status;

   status = FUNC1(
               sequence, scsi_io, ata_io, sector_count, &device_head
            );

   if (status == SATI_SUCCESS)
   {
      status = FUNC0(
                  sequence, scsi_io, ata_io, device_head
               );
   }

   return status;
}