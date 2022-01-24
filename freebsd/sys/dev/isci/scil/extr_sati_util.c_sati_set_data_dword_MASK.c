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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*,int,int) ; 

void FUNC1(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void                       * scsi_io,
   U32                          byte_offset,
   U32                          value
)
{
   /// @todo Check to ensure that the bytes appear correctly (SAS Address).

   FUNC0(sequence, scsi_io, byte_offset, (U8)value & 0xFF);
       byte_offset++;
   FUNC0(sequence, scsi_io, byte_offset, (U8)(value >> 8) & 0xFF);
       byte_offset++;
   FUNC0(sequence, scsi_io, byte_offset, (U8)(value >> 16) & 0xFF);
       byte_offset++;
   FUNC0(sequence, scsi_io, byte_offset, (U8)(value >> 24) & 0xFF);
}